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

					SetTile(pt.X, pt.Y, new Tile(1));
					updatedTiles.Add(new Point2(pt.X - 1, pt.Y - 1));
					updatedTiles.Add(new Point2(pt.X,     pt.Y - 1));
					updatedTiles.Add(new Point2(pt.X + 1, pt.Y - 1));
					updatedTiles.Add(new Point2(pt.X - 1, pt.Y));
					updatedTiles.Add(new Point2(pt.X,     pt.Y));
					updatedTiles.Add(new Point2(pt.X + 1, pt.Y));
					updatedTiles.Add(new Point2(pt.X - 1, pt.Y + 1));
					updatedTiles.Add(new Point2(pt.X,     pt.Y + 1));
					updatedTiles.Add(new Point2(pt.X + 1, pt.Y + 1));
				}

				List<Point2> toPaint = new List<Point2>();
				foreach (Point2 pt in updatedTiles) {
					if (!IsFullAt(pt.X, pt.Y))
						toPaint.Add(pt);
				}

				foreach (Point2 pt in toPaint) {
					Tile t = new Tile(GetTileType(pt));
					SetTile(pt.X, pt.Y, t);
				}

				Attack();

			}
			if (attackTimerCooldown != null) {
				attackTimerCooldown.UpdateAndCheckIfFinished(Time.LastDelta);
			}
		}

		private int GetTileType(Point2 pt) {
			if (MatchesPattern(pt, Array(0, 0, 0, 0, 0, 0, 0, 1))) return 26; // TOP LEFT
			if (MatchesPattern(pt, Array(0, 0, 0, 0, 0, 1, 0, 0))) return 27; // TOP RIGHT
			if (MatchesPattern(pt, Array(0, 0, 1, 0, 0, 0, 0, 0))) return 25; // BOTTOM LEFT
			if (MatchesPattern(pt, Array(1, 0, 0, 0, 0, 0, 0, 0))) return 24; // BOTTOM RIGHT

			if (MatchesPattern(pt, Array(0, 0, 0, 0, 0, 2, 1, 2))) return 16; // TOP
			if (MatchesPattern(pt, Array(0, 0, 2, 0, 1, 0, 0, 2))) return 19; // LEFT
			if (MatchesPattern(pt, Array(2, 0, 0, 1, 0, 2, 0, 0))) return 17; // RIGHT
			if (MatchesPattern(pt, Array(2, 1, 2, 0, 0, 0, 0, 0))) return 18; // BOTTOM

			if (MatchesPattern(pt, Array(2, 0, 0, 1, 0, 2, 1, 2))) return 20; // TOP RIGHT
			if (MatchesPattern(pt, Array(0, 0, 2, 0, 1, 2, 1, 2))) return 21; // TOP LEFT
			if (MatchesPattern(pt, Array(2 ,1, 2, 0, 1, 0, 0, 2))) return 22; // BOTTOM LEFT
			if (MatchesPattern(pt, Array(2, 1, 2, 1, 0, 2, 0, 0))) return 23; // BOTTOM RIGHT
			return 1;
		}

		private int[][] Array(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8) {
			return new int[][]{ new int[]{ a1, a2, a3}, new int[] { a4, 2, a5}, new int[] { a6, a7, a8} };
		}

		// a1 a2 a3
		// a4 XX a5
		// a6 a7 a8
		// 0 <- not full
		// 1 <- full
		// 2 <- don't care
		private bool MatchesPattern(Point2 pt, int[][] pattern) {
			int x = pt.X - 1;
			int y = pt.Y - 1;

			for (int iy = 0; iy < pattern.Count(); iy++) {
				for (int ix = 0; ix < pattern[iy].Count(); ix++) {
					int p = pattern[iy][ix];
					if (p == 2) continue;
					bool full = p == 1;
					if (IsFullAt(x + ix, y + iy) != full) return false; 
				}
			}

			return true;
		}

		private bool IsFullAt(int x, int y) {
			return this.tilemap.Tiles[x, y].BaseIndex == 1;
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
			int i = tilemap.Tiles[x, y].BaseIndex;
            if (i != 0) {
				tilemap.SetTile(x, y, t);

				Point2 tile = new Point2(x, y);
				if (this.GameObj.ParentScene.FindComponent<TilemapHolder>().Layer0.Tiles[x, y].BaseIndex == 9) {
					decayerToDust.SetTimerAt(tile, GetDecayed(t.BaseIndex));
					decayerToGrass.SetTimerAt(tile, 3);
				}
			}
		}

		private int GetDecayed(int index) {
			switch (index) {
				case 26: return 14;
				case 27: return 15;
				case 25: return 13;
				case 24: return 12;
				case 16: return 6;
				case 19: return 5;
				case 17: return 4;
				case 18: return 7;
				case 20: return 8;
				case 21: return 9;
				case 22: return 11;
				case 23: return 10;
			}
			return 0;
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
