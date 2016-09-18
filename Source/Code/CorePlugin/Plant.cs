using Duality;
using Duality.Plugins.Tilemaps;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TilemapJam {
	public class Plant : Alive {

		public bool GrownUp = false;
		public Tilemap layer0 { get; set; }
		public Tilemap layer1 { get; set; }
		public Tilemap layer2 { get; set; }
		public Tilemap layer3 { get; set; }
		public Tilemap background { get; set; }

		private Timer timer;
		public float growthDuration { get; set; } = 7500;
		[DontSerialize]
		public int growthHeight = 0;

		public Point2 pos;

		public override void Kill (Alive a) {}

		public override void OnDeath (Alive a) {
			RemoveTiles(this.pos);
		}

		public override void Update () {
			if (growthHeight < 3 && !GrownUp) {
				if (timer == null)
					timer = new Timer(growthDuration);
				if (timer.UpdateAndCheckIfFinished(Time.LastDelta)) {
					this.Grow();
				}
			}
		}

		private void Grow() {
			if (rand.Next(5) == 0) {
				SetTile(growthHeight, 8);
				GrownUp = true;
			} else {
				if (growthHeight == 0)
					SetTile(0, 4);
				growthHeight++;
				SetTile(growthHeight, 6);
				if (growthHeight > 1)
					SetTile(growthHeight - 1, 5);
				if (growthHeight == 3) {
					SetTile(growthHeight, 8);
					GrownUp = true;
				}
				timer = null;
				growthDuration += rand.Next(-500, 2000);
			}

			this.currentHealth += 5;
			this.totalHealth += 5;
		}

		public void PlantItSelf(Point2 pos) {
			if (layer1 == null || layer2 == null || layer3 == null || layer0 == null) {
				TilemapHolder holder = this.GameObj.ParentScene.FindComponent<TilemapHolder>();
				layer0 = holder.Layer0;
				layer1 = holder.Layer1;
				layer2 = holder.Layer2;
				layer3 = holder.Layer3;
				background = holder.Background;
			}
			this.pos = pos;
			this.SetTile(0, 0);
			this.growthHeight = 0;

			d = this.GameObj.ParentScene.FindComponent<Decayers>();
		}

		Decayers d;

		private void RemoveTiles(Point2 p) {
			for (int i = 0; i <= growthHeight; i++) {
				SetTile(i, 9);
			}

			if (this.GameObj != null && this.GameObj.ParentScene != null && this.GameObj.ParentScene.FindComponent<TilemapHolder>() != null) {
				background.SetTile(p.X, p.Y, new Tile(0));
				d.ToGrass.SetTimerAt(pos, 3);
			}
		}

		private Tilemap GetLayer(int y) {
			if (layer1 == null || layer2 == null || layer3 == null || layer0 == null) {
				TilemapHolder holder = this.GameObj.ParentScene.FindComponent<TilemapHolder>();
				layer0 = holder.Layer0;
				layer1 = holder.Layer1;
				layer2 = holder.Layer2;
				layer3 = holder.Layer3;
			}
			if (y == 0) return layer0;
			if (y == 1) return layer1;
			if (y == 2) return layer2;
			return layer3;
		}

		private void SetTile(int y, int tileId) {
			GetLayer(y).SetTile(pos.X, pos.Y - y, new Tile(tileId));
		}

		public override void OnAttacked () {

		}
	}
}
