using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Resources;
using Duality.Components;

namespace TilemapJam {
	public class Spawner : Component, ICmpUpdatable {

		public ContentRef<Prefab> bunnyPrefab { get; set; }

		private Timer timer;
		public float spawnScale { get; set; } = 1.5f;
		public float SpawnPerSecond { get; set; } = 1;

		private Timer scaleTimer;

		private Random random = new Random();

		public void OnUpdate() {
			if (bunnyPrefab == null) {
				Log.Editor.WriteError("no bunny prefab");
				return;
			}

			if (timer == null)
				timer = new Timer(1000f / SpawnPerSecond);
			if (timer.UpdateAndCheckIfFinished(Time.LastDelta)) {
				Rect r = GetBounds();
				
				float x = 0, y = 0;
				if (random.NextBool()) {
					if (random.NextBool()) {
						x = r.X - 50;
					} else {
						x = r.X + r.W + 50;
					}
					y = random.NextFloat(r.Y, r.Y + r.H);
				} else {
					if (random.NextBool()) {
						y = r.Y - 50;
					} else {
						y = r.Y + r.H + 50;
					}
					x = random.NextFloat(r.X, r.X + r.W);
				}

				GameObject bunny = bunnyPrefab.Res.Instantiate();
				bunny.Transform.Pos = new Vector3(x, y, 0);
				this.GameObj.ParentScene.AddObject(bunny);
				bunny.Parent = this.GameObj;

				timer = null;
			}

			if (scaleTimer == null) scaleTimer = new Timer(1000);
			if (scaleTimer.UpdateAndCheckIfFinished(Time.LastDelta)) {
				SpawnPerSecond *= spawnScale;
				scaleTimer = null;
			}
		}

		private Rect GetBounds() {
			Camera camera = this.GameObj.ParentScene.FindComponent<Camera>();
			Vector3 camAreaTopLeft = camera.GetSpaceCoord(new Vector2(0.0f, 0.0f));
			Vector3 camAreaBottomRight = camera.GetSpaceCoord(DualityApp.TargetResolution);
			Rect camArea = new Rect(
				camAreaTopLeft.X,
				camAreaTopLeft.Y,
				camAreaBottomRight.X - camAreaTopLeft.X,
				camAreaBottomRight.Y - camAreaTopLeft.Y);
			return camArea;
		}

	}
}
