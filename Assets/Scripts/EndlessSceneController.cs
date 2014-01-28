using UnityEngine;
using System.Collections;

public class EndlessSceneController : MonoBehaviour {
	private float prevTime = 0;
	private float curTime = 0;

	public int speed = 600;

	public int cloudWidth = 2220;

	float distance = 0;
	Vector3 lastPos;
	Vector3 initPos;
	int count = 1;

	GameObject cloud01;
	GameObject cloud02;

	public GameObject prefab;

	bool isCloudCreated = false;

	GameObject test01;
	GameObject test02;
	// Use this for initialization
	void Start () {
		lastPos = this.transform.position;
		initPos = this.transform.position;
		cloud01 = GameObject.Find("Cloud01");
		cloud02 = GameObject.Find("Cloud02");
		test01 = (GameObject)Instantiate(prefab, new Vector3(0, 1, 0), Quaternion.Euler(0, 0, 0));
		test02 = (GameObject)Instantiate(prefab, new Vector3(0, 1, 2220), Quaternion.Euler(0, 0, 0));
		//Destroy(test01, 2220/speed+1);
		//Destroy(test02, 2*2220/speed+1);
	}
	
	// Update is called once per frame
	void Update () {
		test01.transform.Translate(0, 0, -Time.deltaTime * 50);
		/*
		distance += Vector3.Distance(this.transform.position, lastPos);
		lastPos = this.transform.position;
		if(distance > 2220){
			//isCloudCreated = true;
			distance = 0;
			count++;
			//cloud01.transform.position = new Vector3(0, 1, 4440);
			//this.transform.position = new Vector3(0, 1, 0);
			//GameObject cloud03 = new GameObject("Cloud03");
			GameObject test = (GameObject)Instantiate(prefab, new Vector3(0, 1, count*2220), Quaternion.Euler(0, 0, 0));
			Destroy(test, 2*2220/speed+1);
			//if(test.transform.position.z < this.transform.position.z - 1110){
			//	Destroy(test);
			//}
		}

		//this.transform.Translate(0, 0, speed*Time.deltaTime);
		*/

	}
}