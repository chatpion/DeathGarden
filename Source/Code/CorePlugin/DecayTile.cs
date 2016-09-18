using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Plugins.Tilemaps;

namespace TilemapJam {
	public class DecayTile : Component, ICmpUpdatable, ICmpInitializable {
		
		public float decayTime { get; set; }
		
		public Tilemap tilemap { get; set; }

		public Grid<Timer> timers;
		public Grid<int> decayedTilesIndex;

		private Random rand = new Random();

		public void OnUpdate() {
			if (tilemap == null) {
				Log.Editor.Write("null tilemap");
				return;
			}

			for (int x = 0; x < timers.Width; x++) {
				for (int y = 0; y < timers.Height; y++) {
					Timer timer = timers[x, y];
					if (timer == null) {
						continue;
					}

					if (timer.UpdateAndCheckIfFinished(Time.LastDelta)) {
						tilemap.SetTile(x, y, new Tile(decayedTilesIndex[x, y]));
						timers[x, y] = null;
					}
				}
			}
		}

		public void SetTimerAt(Point2 point, int decayedIndex) {
			this.timers[point.X, point.Y] = new Timer(decayTime + rand.NextFloat(-decayTime * 0.1f, decayTime * 0.1f));
			this.decayedTilesIndex[point.X, point.Y] = decayedIndex;
		}

		public void RemoveTimerAt(Point2 point) {
			this.timers[point.X, point.Y] = null;
        }

		public void OnInit (InitContext context) {
			if (context == InitContext.Activate) {
				timers = new Grid<Timer>(tilemap.Size.X, tilemap.Size.Y);
				decayedTilesIndex = new Grid<int>(tilemap.Size.X, tilemap.Size.Y);
			}
		}

		public void OnShutdown (ShutdownContext context) {

		}
	}
}
