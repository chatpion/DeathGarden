using Duality;
using Duality.Components.Renderers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TilemapJam {
	public class CharacterController : Component, ICmpUpdatable {

		private float accelValue = 500f;
		[DontSerialize]
		private Vector2 acceleration = Vector2.Zero;
		[DontSerialize]
		private Vector2 velocity = Vector2.Zero;

		public bool isAttacking = false;

		public float AccelValue {
			get { return this.accelValue; }
			set { this.accelValue = value; }
		}
		public Vector2 Acceleration {
			get { return this.acceleration; }
			set { this.acceleration = value; }
		}
		public Vector2 Velocity {
			get { return this.velocity; }
			set { this.velocity = value; }
		}

		public float defaultMaxSpeed { get; set; } = 100;
		public float maxSpeed { get; set; } = 0;

		public void OnUpdate () {
			if (maxSpeed == 0)
				this.maxSpeed = defaultMaxSpeed;

			SetFlip();

			if (MustSlowDown()) {
				this.acceleration += -this.velocity.Normalized * AccelValue;
			}

			this.velocity += this.acceleration * (Time.LastDelta / 1000);

			if (IsOverMaxSpeed()) {
				this.velocity *= maxSpeed / this.velocity.Length;
            }
			this.GameObj.Transform.Pos += new Vector3(this.velocity * (Time.LastDelta / 1000));
			this.acceleration = Vector2.Zero;
		}

		public void SetFlip() {
			CustomActorRenderer car = this.GameObj.GetComponent<CustomActorRenderer>();
			SpriteRenderer.FlipMode flip = car.flip;
			if (this.acceleration.X < 0)
				flip = SpriteRenderer.FlipMode.Horizontal;
			else if (this.acceleration.X > 0)
				flip = SpriteRenderer.FlipMode.None;
			car.flip = flip;
		}

		private bool MustSlowDown() {
			return this.acceleration.Equals(Vector2.Zero) && !this.velocity.Equals(Vector2.Zero) && !isAttacking;
        }

		private bool IsOverMaxSpeed() {
			return this.velocity.LengthSquared > maxSpeed * maxSpeed && this.velocity.LengthSquared != 0;
        }
	}
}
