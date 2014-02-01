using UnityEngine;
using System.Collections;

public class audioManager : MonoBehaviour {

	float flapRight;
	float flapLeft;
	float mainVolume;

	private float map(float x, float  inLow, float inHigh, float outLow, float outHigh){
		return (x - inLow) * (outHigh - outLow) / (inHigh - inLow) + outLow;
	}
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void receive(float x, float y){
		flapRight = map(x,0.0f,10.0f,0.0f,1.0f);
		flapLeft = map(y,0.0f,10.0f,0.0f,1.0f);

		var audios = GetComponents(AudioSource);


	}

}
