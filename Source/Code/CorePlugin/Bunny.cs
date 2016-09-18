using Duality;
using Duality.Components;
using Duality.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TilemapJam {
	public class Bunny : Alive, ICmpInitializable {

		public Alive target { get; set; }
		public float attackRadius { get; set; } = 0.5f;
		public float attackCooldown { get; set; } = 200f;
		public int attack { get; set; } = 5;
		private Favorite fav;
		enum Favorite {
			Young = 0, GrownUp = 1, Rest = 2
		}

		public int maxSeed { get; set; } = 5;
		public float minSeedDist { get; set; } = 10;
		public float maxSeedDist { get; set; } = 30;
		public ContentRef<Prefab> seedPrefab { get; set; }

		public float tileSize { get; set; } = 16;

		public Timer timer;

		public bool IsTracking { get; set; } = true;

		public override void Kill (Alive a) {
			this.currentHealth += a.totalHealth / 2;
			this.totalHealth += a.totalHealth / 2;

			this.GameObj.ParentScene.FindComponent<Player>().TakeDmg(a.totalHealth / 2, this);
		}

		public override void OnDeath (Alive a) {
			int nbSeed = rand.Next(1, maxSeed + 1);
			for (int i = 0; i  < nbSeed; i++) {
				float alpha = rand.NextFloat(MathF.TwoPi);
				float radius = rand.NextFloat(minSeedDist, maxSeedDist);
				GameObject seed = seedPrefab.Res.Instantiate();
				seed.Transform.Pos = this.GameObj.Transform.Pos + new Vector3(MathF.Cos(alpha) * radius, MathF.Sin(alpha) * radius, 0);
				this.GameObj.ParentScene.AddObject(seed);
			}
		}

		public override void OnUpdate () {
			Player player = this.GameObj.ParentScene.FindComponent<Player>();
			if (player == null) return;

			IEnumerable<Plant> plants = this.GameObj.ParentScene.FindComponents<Plant>();
			if (plants.Count() == 0)
				this.target = player;
			else if (NeedToChangeTarget(player)) {
				TargetPlant(plants);
			}
			
			IsTracking = !IsTargetCloseEnough();

			if (IsTracking) {
				Track();
			} else {
				Attack();
            }
		}

		private bool NeedToChangeTarget(Alive player) {
			return target == null || target.Equals(player) || target.IsDead();
        }

		private void TargetPlant(IEnumerable<Plant> plants) {
			Plant[] p = plants.ToArray();
			List<Plant> youngs = new List<Plant>();
			List<Plant> grown = new List<Plant>();
			List<Plant> rest = new List<Plant>();

			foreach (Plant plant in p) {
				if (plant.growthHeight == 0)
					youngs.Add(plant);
				else if (plant.GrownUp)
					grown.Add(plant);
				else
					rest.Add(plant);
			}

			if (this.fav == Favorite.GrownUp && grown.Count > 0)
				this.target = grown[rand.Next(grown.Count())];
			else if (this.fav == Favorite.Young && youngs.Count > 0)
				this.target = youngs[rand.Next(youngs.Count())];
			else if (this.fav == Favorite.Rest && rest.Count > 0)
				this.target = rest[rand.Next(rest.Count())];
			else
				this.target = p[rand.Next(p.Count())];
			IsTracking = true;
			timer = null;
		}

		private void Track() {
			if (!this.target.GameObj.Transform.Pos.Xy.Equals(this.GameObj.Transform.Pos.Xy)) {
				CharacterController cc = this.GameObj.GetComponent<CharacterController>();
				if (cc == null) {
					return;
				}
				cc.Acceleration += (this.target.GameObj.Transform.Pos.Xy - this.GameObj.Transform.Pos.Xy).Normalized * cc.AccelValue;
			}
		}

		private void Attack() {
			if (timer == null)
				timer = new Timer(attackCooldown);
			if (timer.UpdateAndCheckIfFinished(Time.LastDelta)) {
				target.TakeDmg(attack, this);
				timer = new Timer(attackCooldown);
			}
		}

		private bool IsTargetCloseEnough() {
			return (this.target.GameObj.Transform.Pos - this.GameObj.Transform.Pos).LengthSquared <= attackRadius * attackRadius * tileSize * tileSize;
		}

		void ICmpInitializable.OnInit (InitContext context) {
			if (context == InitContext.Activate) {
				this.fav = (Favorite)rand.Next(3);
			}
		}

		void ICmpInitializable.OnShutdown (ShutdownContext context) {

		}
	}
}
