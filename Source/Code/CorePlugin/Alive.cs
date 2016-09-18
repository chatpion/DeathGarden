using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;

namespace TilemapJam {
	public abstract class Alive : Component, ICmpUpdatable {

		public int currentHealth { get; set; }
		public int totalHealth { get; set; }

		[DontSerialize]
		public static Random rand = new Random();

		public void TakeDmg(int dmg, Alive attacker) {
			if (IsDead()) return;
			currentHealth -= dmg;
			if (IsDead()) {
				Die(attacker);
			}
		}

		public void Die(Alive attacker) {
			this.OnDeath(attacker);
			attacker.Kill(this);
			this.GameObj.DisposeLater();
		}

		public bool IsDead() {
			return currentHealth <= 0;
		}

		public abstract void OnUpdate ();
		public abstract void OnDeath (Alive a);
		public abstract void Kill (Alive a);
	}
}
