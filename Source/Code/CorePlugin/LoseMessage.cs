using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Components.Renderers;

namespace TilemapJam {
	public class LoseMessage : Component {

		public GameObject lose1 { get; set; }
		public GameObject lose2 { get; set; }
		public GameObject lose3 { get; set; }

		public string Attacker;
		public int PlantCount;
		public int BunnyCount;

		/*
		
		*/
		public void Show () {
			this.GameObj.Active = true;

			lose1.GetComponent<TextRenderer>().Text.SourceText = Attacker + " has stopped you !";
			lose2.GetComponent<TextRenderer>().Text.SourceText = "You reaped " + PlantCount + " pretty flowers and";
			lose3.GetComponent<TextRenderer>().Text.SourceText = BunnyCount + " innocent cute little bunnies' souls";
		}

	}
}
