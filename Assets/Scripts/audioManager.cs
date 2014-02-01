using UnityEngine;
using System.Collections;

public class audioManager : MonoBehaviour {

	float flapRight;
	float flapLeft;
	float mainVolume;
	AudioSource flapL, flapR, main;

	private float map(float x, float  inLow, float inHigh, float outLow, float outHigh){
		return (x - inLow) * (outHigh - outLow) / (inHigh - inLow) + outLow;
	}
	// Use this for initialization
	void Start () {
		AudioSource[] audios = GetComponents<AudioSource>();
		main = audios[0];
		flapL = audios[1];
		flapR = audios[2];
	}
	
	// Update is called once per frame
	void Update () {
	
		GameObject bird = GameObject.Find("Bird");
		mainVolume = map(bird.rigidbody.velocity.magnitude,0.0f,10.0f,0.0f,0.5f);
		main.volume = mainVolume;

	}

	void BirdWingForceLR(Vector2 f){
		flapRight = map(f.y,0.0f,10.0f,0.0f,1.0f);
		flapLeft = map(f.x,0.0f,10.0f,0.0f,1.0f);
		flapL.volume = flapLeft;
		flapR.volume = flapRight;

	}

	void BirdWingHeightLR(Vector2 h){
		 
	}

}
