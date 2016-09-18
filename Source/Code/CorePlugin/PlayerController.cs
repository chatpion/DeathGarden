using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Input;

namespace TilemapJam {
	
	public class PlayerController : Component, ICmpUpdatable {

		private CharacterController character;

		public CharacterController Character {
			get { return this.character; }
			set { this.character = value; }
		}

		void ICmpUpdatable.OnUpdate () {
			if (this.character == null) this.character = this.GameObj.GetComponent<CharacterController>();

			// Keyboard character controls using WASD
			Vector2 movement = Vector2.Zero;
			if (DualityApp.Keyboard[Key.A])
				movement -= Vector2.UnitX;
			if (DualityApp.Keyboard[Key.D])
				movement += Vector2.UnitX;
			if (DualityApp.Keyboard[Key.W])
				movement -= Vector2.UnitY;
			if (DualityApp.Keyboard[Key.S])
				movement += Vector2.UnitY;

			// Gamepad character controls using the left stick
			for (int i = 0; i < DualityApp.Gamepads.Count; i++) {
				// Those sticks can be a bit inaccurate / loose and report values up
				// to around 0.25f without any player interaction. Filter those values
				// out with a threshold, so we only move when the stick is actually moved
				// around.
				Vector2 thresholdedStick = DualityApp.Gamepads[i].LeftThumbstick;
				thresholdedStick = Vector2.FromAngleLength(
					thresholdedStick.Angle,
					MathF.Max(thresholdedStick.Length - 0.3f, 0.0f) / 0.7f);
				movement += thresholdedStick;
			}

			Vector2 move = movement == Vector2.Zero ? Vector2.Zero : movement.Normalized;
			if (!this.character.isAttacking)
				this.character.Acceleration += move * this.character.AccelValue;
		}
	}
}
