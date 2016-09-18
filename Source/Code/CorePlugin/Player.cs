using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Components.Renderers;

namespace TilemapJam {
	public class Player : Alive {

		[DontSerialize]
		public int BunnyCount = 0;
		[DontSerialize]
		public int PlantCount = 0;

		public GameObject lose1 { get; set; }
		public GameObject lose2 { get; set; }
		public GameObject lose3 { get; set; }

		public GameObject time { get; set; }

		public override void Kill (Alive a) {
			if (IsBunny(a)) {
				this.BunnyCount++;
			} else if (IsPlant(a)) {
				this.PlantCount++;
				this.currentHealth += a.currentHealth;
				this.totalHealth += a.totalHealth;
			}
		}

		public override void OnDeath (Alive a) {
			this.ShowDeathMsg(a);
			Time.Freeze();
			this.GameObj.ParentScene.FindComponent<PlayerAttack>().DisposeLater();
			this.GameObj.ParentScene.FindComponent<PlayerController>().DisposeLater();
		}

		public void ShowDeathMsg (Alive attacker) {
			lose1.Active = true;
			string name = "";
			if (IsBunny(attacker))
                name = "A bunny";
			else
				name = "Time";
            lose1.GetComponent<TextRenderer>().Text.SourceText = name + " has stopped you !";

			lose2.Active = true;
			lose2.GetComponent<TextRenderer>().Text.SourceText = "You reaped " + PlantCount + " pretty flowers and";

			lose3.Active = true;
			lose3.GetComponent<TextRenderer>().Text.SourceText = BunnyCount + " innocent cute little bunnies' souls";
        }

		private Timer timer;

		public override void OnUpdate () {
			if (timer == null)
				timer = new Timer(1000);
			if (timer.UpdateAndCheckIfFinished(Time.LastDelta)) {
				timer = null;
				this.currentHealth--;
			}

			time.GetComponent<TextRenderer>().Text.SourceText = (currentHealth / 60) + ":" + (currentHealth % 60);
		}

		private bool IsBunny(Alive a) {
			return (a.GetType() == typeof(Bunny));
		}

		private bool IsPlant (Alive a) {
			return (a.GetType() == typeof(Plant));
		}

	}
}
