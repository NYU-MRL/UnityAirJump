using UnityEngine;
using System.Collections;

public class Bird : MonoBehaviour {
	public float maxRotationRadians;
	private const float 	THIRD_PI 	= Mathf.PI * 0.33333333f,
								HALF_PI 	= Mathf.PI * 0.5f;	
	private Vector3 WingL, WingR, WingForceL, WingForceR, NeckPosition;
	private Vector3 LocalHeading = new Vector3(0,1,1);

	void Start () {
		WingL = new Vector3();
		WingR = new Vector3();
		WingForceL = new Vector3();
		WingForceR = new Vector3();
		NeckPosition = new Vector3();
	}
	
	void Update () {
		ReadController();
//		CalculateDrag();
		rigidbody.AddRelativeForce(new Vector3(0,WingForceL.magnitude, 5), ForceMode.Force);
		rigidbody.AddRelativeForce(new Vector3(0,WingForceR.magnitude, 5), ForceMode.Force);

//		transform.localRotation
		var rotateY =  map ((WingL.y - WingR.y),-1, 1,-maxRotationRadians, maxRotationRadians);
//		var localRot = Quaternion.Euler(0,0,map( (WingL.y - WingR.y),-1,1,-HALF_PI,HALF_PI));
//		var localTranform = GameObject.Find ("BirdLocalTransform");
//		localTranform.transform.Rotate(0,0,map( (WingL.y - WingR.y),-1,1,-HALF_PI,HALF_PI));
		transform.Rotate(0,rotateY,0);

		BroadcastUpdates();
	}
	
	void BroadcastUpdates(){
		BroadcastMessage("BirdWingForceLR", new Vector2(WingForceL.magnitude,WingForceR.magnitude));
		BroadcastMessage("BirdWingHeightLR", new Vector2(WingL.magnitude, WingR.magnitude));
	}

	void ReadController(){
		//All of this is already smoothed
		float lx = Input.GetAxis("GametrakX");
		float ly = Input.GetAxis("GametrakY");
		float lz = Input.GetAxis("GametrakZ");
		float rx = Input.GetAxis("GametrakX1");
		float ry = Input.GetAxis("GametrakY1");
		float rz = Input.GetAxis("GametrakZ1");

		var valL = controllerToPosition(lx,ly,lz);
		var valR = controllerToPosition(rx,ry,rz);

		WingForceR = killUpwardsFlaps(valR - WingR) * Time.deltaTime * 50000;
		WingForceL = killUpwardsFlaps(valL - WingL) * Time.deltaTime * 50000;
		WingL = valL;
		WingR = valR;
	}

//	void GetDragForce() {
//		this.rigidbody.velocity.normalized 
//	}

private float map(float x, float  inLow, float inHigh, float outLow, float outHigh){
		return (x - inLow) * (outHigh - outLow) / (inHigh - inLow) + outLow;
	}
	
private Vector3 controllerToPosition(float x, float y, float z){
	var phi = map (y, -1, 1, -HALF_PI - THIRD_PI, -HALF_PI + THIRD_PI);
	var theta = map(x, -1, 1, -HALF_PI - THIRD_PI, -HALF_PI + THIRD_PI);
	var r = map (z, -1,1, 1,0 );
	return new Vector3(
							r * Mathf.Sin(phi) * Mathf.Cos(theta) ,
							r * Mathf.Sin(phi) * Mathf.Sin(theta),
							r * Mathf.Cos(phi));
	}

	private Vector3 killUpwardsFlaps(Vector3 v){
		return new Vector3(v.x, Mathf.Max(0, v.y), v.z);
	}

	public Vector2 getWingForceMagnitudeLR(){
		return new Vector2(WingForceL.magnitude, WingForceR.magnitude);
	}

	public Vector2 getWingHeightLR(){
		return new Vector2(WingL.magnitude, WingR.magnitude);
	}
}


