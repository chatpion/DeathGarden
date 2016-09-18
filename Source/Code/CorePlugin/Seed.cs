using Duality;
using Duality.Plugins.Tilemaps;
using Duality.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TilemapJam {
	public class Seed : Component, ICmpUpdatable {

		public float maxDuration { get; set; } = 3000;
		[DontSerialize]
		private Timer timer;

		public ContentRef<Prefab> plantPrefab { get; set; }

		public Tilemap tilemap { get; set; }

		public Vector3 direction { get; set; }
		private bool OnGround = false;
		public CustomActorRenderer car;

		public void OnUpdate () {
			if (tilemap == null) {
				//Log.Editor.Write("no tilemap for seed");
				tilemap = this.GameObj.ParentScene.FindComponent<TilemapHolder>().Background;
				return;
			}

			if (car == null) car = this.GameObj.GetComponent<CustomActorRenderer>();

			if (!this.OnGround) {
				
				this.direction -= new Vector3(0, 0, 0.01f * Time.LastDelta);
				this.GameObj.Transform.Pos += new Vector3(this.direction.Xy * Time.LastDelta);
				this.car.Height += this.direction.Z * Time.LastDelta;
				if (this.car.Height <= 0 && this.direction.Z < 0) {
					this.OnGround = true;
				}
			} else {
				if (timer == null) timer = new Timer(maxDuration);
				if (timer.UpdateAndCheckIfFinished(Time.LastDelta)) {
					this.GameObj.DisposeLater();
				} else {
					this.CheckIfCanPlant();
				}
            }
		}

		public void CheckIfCanPlant() {
			Point2 pos = tilemap.GameObj.GetComponent<TilemapRenderer>().GetTileAtLocalPos(this.GameObj.Transform.Pos.Xy, TilePickMode.Clamp);
			if (tilemap.Tiles[pos.X, pos.Y].BaseIndex == 1) {
				GameObject plant = plantPrefab.Res.Instantiate();
				plant.Transform.Pos = new Vector3(GetCenterFromTile(pos));
				this.GameObj.ParentScene.AddObject(plant);
				plant.GetComponent<Plant>().PlantItSelf(pos);
				Decayers d = this.GameObj.ParentScene.FindComponent<Decayers>();
				d.ToDust.RemoveTimerAt(pos);

				tilemap.SetTile(pos.X, pos.Y, new Tile(2));
				d.ToGrass.RemoveTimerAt(pos);

				this.GameObj.DisposeLater();
			}
		}

		private Vector2 GetCenterFromTile (Point2 pt) {
			Vector2 tileSize = tilemap.Tileset.Res.TileSize;
			Vector2 TopLeft = tilemap.GameObj.Transform.Pos.Xy - new Vector2((((float)tilemap.Size.X) / 2) * tileSize.X, (((float)tilemap.Size.Y) / 2f) * tileSize.Y);
			return new Vector2(TopLeft.X + tileSize.X * pt.X + tileSize.X / 2, TopLeft.Y + tileSize.Y * pt.Y + tileSize.Y / 2);
		}

	}
}
