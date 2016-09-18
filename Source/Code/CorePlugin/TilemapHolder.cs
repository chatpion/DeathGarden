using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Plugins.Tilemaps;

namespace TilemapJam {
	public class TilemapHolder : Component {

		public Tilemap Background { get; set; }
		public Tilemap Layer0 { get; set; }
		public Tilemap Layer1 { get; set; }
		public Tilemap Layer2 { get; set; }
		public Tilemap Layer3 { get; set; }

	}
}
