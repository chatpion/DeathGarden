using Duality;

namespace TilemapJam {
	[RequiredComponent(typeof(CustomActorRenderer))]
	public class JumpAnimation : Component, ICmpUpdatable {

		private float timeElapsed = 0;
		private float x = 0;

		public float MaxHeight { get; set; } = 5;
		public float Duration { get; set; } = 1;

		public void OnUpdate () {
			CustomActorRenderer actor = this.GameObj.GetComponent<CustomActorRenderer>();
			if (actor.Height <= 1 && !this.GameObj.GetComponent<Bunny>().IsTracking) return;

			timeElapsed += Time.LastDelta;
			x = 2 * timeElapsed / (Duration * 1000) - 1;
			if (x >= 1) {
				x -= 2;
				timeElapsed -= Duration * 1000;
				if (!this.GameObj.GetComponent<Bunny>().IsTracking) {
					x = 0;
					timeElapsed = 0;
				}
			}
				
			actor.Height = (-MathF.Abs(x * x * x) + 1) * MaxHeight;
		}

	}
}
