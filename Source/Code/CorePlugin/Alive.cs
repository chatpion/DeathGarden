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

		public float AttackedCooldownTime { get; set; } = 300f;
		protected Timer AttackedCooldown;

		[DontSerialize]
		public static Random rand = new Random();

		public void TakeDmg(int dmg, Alive attacker) {
			if (IsDead()) return;

			if (AttackedCooldown == null) AttackedCooldown = new Timer(AttackedCooldownTime);
			if (AttackedCooldown.IsFinished()) {
				currentHealth -= dmg;
				OnAttacked();
				if (IsDead()) {
					Die(attacker);
				}
				AttackedCooldown = null;
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

		public void OnUpdate () {
			if (AttackedCooldown != null)
				AttackedCooldown.UpdateAndCheckIfFinished(Time.LastDelta);
			Update();
		}

		public abstract void OnAttacked ();
		public abstract void Update ();
		public abstract void OnDeath (Alive a);
		public abstract void Kill (Alive a);
	}
}
