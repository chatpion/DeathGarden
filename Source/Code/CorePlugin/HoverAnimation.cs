using Duality;

namespace TilemapJam
{
	[RequiredComponent(typeof(CustomActorRenderer))]
	public class HoverAnimation : Component, ICmpUpdatable {

		private float timeElapsed = 0;
		private float x = 0;

		public float MaxHeight { get; set; } = 5;
		public float TwoPiTime { get; set; } = 1;

		public void OnUpdate () {
			timeElapsed += Time.LastDelta;
			x = timeElapsed * MathF.TwoPi / (TwoPiTime * 1000);
			if (x >= MathF.TwoPi) {
				x -= MathF.TwoPi;
				timeElapsed -= TwoPiTime * 1000;
			}
            CustomActorRenderer actor = this.GameObj.GetComponent<CustomActorRenderer>();
			actor.Height = MathF.Cos(x) * MaxHeight;
		}

	}
}
