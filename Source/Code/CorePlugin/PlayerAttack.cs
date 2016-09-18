using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Plugins.Tilemaps;
using Duality.Components;
using Duality.Drawing;
using Duality.Resources;

namespace TilemapJam {
	public class PlayerAttack : Component, ICmpUpdatable, ICmpRenderer {

		public TilemapRenderer tilemapRenderer { get; set; }
		public Tilemap tilemap { get; set; }
		public CharacterController player { get; set; }
		
		[DontSerialize]
		public Vector2 attackDirection;
		[DontSerialize]
		public Timer attackTimer;

		private Timer attackTimerCooldown;

		public float attackDuration { get; set; } = 175;
		public float attackCooldown { get; set; } = 300;
		public float attackAccel { get; set; } = 10000;
		public float attackMaxSpeed { get; set; } = 500;
		public float attackRadius { get; set; } = 1;
		public int attack { get; set; } = 10;

		public float AttackForce { get; set; } = 10;

		public DecayTile decayerToDust { get; set; }
		public DecayTile decayerToGrass { get; set; }

		public void OnUpdate() {
			if (tilemapRenderer == null || player == null || tilemap == null) return;

			if (CanAttack()) {
				Vector2 mouse = this.GameObj.ParentScene.FindComponent<Camera>().GetSpaceCoord(DualityApp.Mouse.Pos).Xy;
				Vector2 pos = player.GameObj.Transform.Pos.Xy;
				attackDirection = (mouse - pos).Normalized;

				player.maxSpeed = attackMaxSpeed;
				player.isAttacking = true;
				
				attackTimer = new Timer(attackDuration);

				player.Velocity = this.attackDirection * attackAccel;
			}

			//ResetMap();

			if (player.isAttacking) {
				if (attackTimer.UpdateAndCheckIfFinished(Time.LastDelta)) {
					player.maxSpeed = player.defaultMaxSpeed;
					player.isAttacking = false;
					attackTimer = null;
					attackTimerCooldown = new Timer(attackCooldown);
				}

				Vector2 playerPos = player.GameObj.Transform.Pos.Xy;
				Vector2 tileSize = tilemap.Tileset.Res.TileSize;
				int ceiling = (int)MathF.Ceiling(this.attackRadius);
				Vector2[] vecList = new Vector2[(2 * ceiling + 1) * (2 * ceiling + 1)];
				for (int i = 0; i < ceiling * 2 + 1; i++) {
					for (int j = 0; j < ceiling * 2 + 1; j++) {
						vecList[i * (ceiling * 2 + 1) + j] = new Vector2(playerPos.X - ceiling * tileSize.X + tileSize.X * i, playerPos.Y - ceiling * tileSize.Y + tileSize.Y * j);
					}
				}

				List<Point2> updatedTiles = new List<Point2>();
				foreach (Vector2 p in vecList) {
					Point2 pt = tilemapRenderer.GetTileAtLocalPos(p, TilePickMode.Clamp);
					if (CantModifyTile(tilemap.Tiles[pt.X, pt.Y].BaseIndex)) continue;
					if (IsOutOfRadius(pt)) continue;

					PaintTiles(pt);
				}

				Attack();

			}
			if (attackTimerCooldown != null) {
				attackTimerCooldown.UpdateAndCheckIfFinished(Time.LastDelta);
			}
		}

		private void PaintTiles(Point2 pt) {
			SetTile(pt.X - 1, pt.Y - 1, new Tile(26));
			SetTile(pt.X, pt.Y - 1, new Tile(16));
			SetTile(pt.X + 1, pt.Y - 1, new Tile(27));
			SetTile(pt.X - 1, pt.Y, new Tile(19));
			SetTile(pt.X, pt.Y, new Tile(1));
			SetTile(pt.X + 1, pt.Y, new Tile(17));
			SetTile(pt.X - 1, pt.Y + 1, new Tile(25));
			SetTile(pt.X, pt.Y + 1, new Tile(18));
			SetTile(pt.X, pt.Y + 1, new Tile(24));
		}

		// a1 a2 a3
		// a4 XX a5
		// a6 a7 a8
		private bool MatchesPattern(bool a1, bool a2, bool a3, bool a4, bool a5, bool a6, bool a7, bool a8) {

		}

		private void Attack() {
			foreach (Plant plant in this.GameObj.ParentScene.FindComponents<Plant>()) {
				if (plant.GrownUp) {
					if (!IsOutOfRange(plant.GameObj.Transform.Pos.Xy)) {
						plant.Die(this.player.GameObj.GetComponent<Player>());
					}
				}
			}
			foreach (Bunny bunny in this.GameObj.ParentScene.FindComponents<Bunny>()) { 
				if (IsBunnyInRange(bunny.GameObj.Transform.Pos.Xy)) {
					bunny.TakeDmg(attack, this.player.GameObj.GetComponent<Player>());
					CharacterController bCar = bunny.GameObj.GetComponent<CharacterController>();
					bCar.Velocity = ((bunny.GameObj.Transform.Pos - this.player.GameObj.Transform.Pos).Normalized * AttackForce ).Xy;
				}
			}
		}

		private void SetTile(int x, int y, Tile t) {
			if (tilemap.Tiles[x, y].BaseIndex == 3) {
				tilemap.SetTile(x, y, t);

				Point2 tile = new Point2(x, y);
				if (this.GameObj.ParentScene.FindComponent<TilemapHolder>().Layer0.Tiles[x, y].BaseIndex == 9) {
					decayerToDust.SetTimerAt(tile);
					decayerToGrass.SetTimerAt(tile);
				}
			}
		}

		private Rect GetTileFromPoint(Point2 pt) {
			Vector2 tileSize = tilemap.Tileset.Res.TileSize;
            Vector2 TopLeft = tilemap.GameObj.Transform.Pos.Xy - new Vector2(( ((float)tilemap.Size.X) / 2) * tileSize.X, ( ((float)tilemap.Size.Y) / 2f) * tileSize.Y);
			return new Rect(TopLeft.X + tileSize.X * pt.X, TopLeft.Y + tileSize.Y * pt.Y, tileSize.X, tileSize.Y);
		}

		private bool IsOutOfRadius(Point2 pt) {
			Rect r = GetTileFromPoint(pt);
			Vector2[] list = new Vector2[5];
			list[0] = new Vector2(r.X + r.W / 2, r.Y + r.H / 2);
			list[1] = new Vector2(r.X + r.W, r.Y + r.H);
			list[2] = new Vector2(r.X, r.Y + r.H);
			list[3] = new Vector2(r.X + r.W, r.Y);
			list[4] = new Vector2(r.X, r.Y);

			rects.Add(r);

			foreach (Vector2 v in list) {
				if (!IsOutOfRange(v)) {
					return false;
				}
			}

			return true;
		}

		private bool IsOutOfRange(Vector2 pos) {
			if ((pos - player.GameObj.Transform.Pos.Xy).LengthSquared > (attackRadius * attackRadius) * tilemap.Tileset.Res.TileSize.X * tilemap.Tileset.Res.TileSize.X) {
				return true;
			}
			return false;
		}

		private bool IsBunnyInRange(Vector2 pos) {
			if ((pos - player.GameObj.Transform.Pos.Xy).LengthSquared > ((0.5f + attackRadius) * (0.5f + attackRadius)) * tilemap.Tileset.Res.TileSize.X * tilemap.Tileset.Res.TileSize.X) {
				return false;
			}
			return true;
		}

		private bool CantModifyTile(int index) {
			return false;
		}

		private void ResetMap() {
			Point2 size = tilemap.Size;
			for (int i = 0; i < size.X; i++) {
				for (int j = 0; j < size.Y; j++) {
					tilemap.SetTile(i, j, new Tile(3));
				}
			}
		}

		private bool CanAttack() {
			return !player.isAttacking && DualityApp.Mouse.ButtonHit(Duality.Input.MouseButton.Left) && (attackTimerCooldown == null || attackTimerCooldown.IsFinished());
        }

		float ICmpRenderer.BoundRadius {
			get {
				return 0;
			}
		}

		bool ICmpRenderer.IsVisible (IDrawDevice device) {
			if (device.VisibilityMask == VisibilityFlag.AllGroups)
				return true;
			return false;
		}

		private List<Rect> rects = new List<Rect>();

		void ICmpRenderer.Draw (IDrawDevice device) {
			/*Canvas c = new Canvas(device);
			float tileSize = tilemap.Tileset.Res.TileSize.X;
			Vector2 playerPos = this.player.GameObj.Transform.Pos.Xy;
            c.DrawCircle(playerPos.X, playerPos.Y, attackRadius * tileSize);
			int ceiling = (int)MathF.Ceiling(attackRadius);
			//c.DrawRect(playerPos.X - ceiling * tileSize, playerPos.Y - ceiling * tileSize, 2 * ceiling * tileSize, 2 * ceiling * tileSize);
			foreach (Rect r in rects) {
				c.DrawRect(r.X, r.Y, r.W, r.H);
			}
			rects.Clear();*/
		}
	}
}
