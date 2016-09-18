using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TilemapJam {
	public class Timer {

		private float time;

		public Timer (float time) {
			this.time = time;
		}

		public bool UpdateAndCheckIfFinished(float delta) {
			if (IsFinished()) return true;
			this.time -= delta;
			return false;
		}

		public bool IsFinished() {
			return time <= 0;
		}

	}
}
