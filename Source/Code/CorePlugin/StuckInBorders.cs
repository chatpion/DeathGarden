using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;
using Duality.Components;

namespace TilemapJam {
	public class StuckInBorders : Component, ICmpUpdatable {

		public Rect r { get; set; }

		public void OnUpdate() {
			r = GetCamRect();
			Vector3 p = this.GameObj.Transform.Pos;
			float x = p.X, y = p.Y;
			if (p.X < r.X)
				x = MathF.Max(p.X, r.X);
			if (p.X > r.X + r.W)
				x = MathF.Min(p.X, r.X + r.W);
			if (p.Y < r.Y)
				y = MathF.Max(p.Y, r.Y);
			if (p.Y > r.Y + r.H)
				y = MathF.Min(p.Y, r.Y + r.H);
			this.GameObj.Transform.Pos = new Vector3(x, y, p.Z);
		}

		public Rect GetCamRect() {
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
