using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EndlessSceneController : MonoBehaviour {
	private float prevTime = 0;
	private float curTime = 0;

	public int speed = 20;
    public int turnSpeed = 20;

	public int cloudWidth = 500;

	float distance = 0;
	Vector3 lastPos;
	Vector3 initPos;
	int count = 1;

	GameObject cloud01;
	GameObject cloud02;

	public GameObject prefab;

	bool isCloudCreated = false;

    private float z_diff = 0;

	// Use this for initialization
	void Start () {
		lastPos = this.transform.position;
		initPos = this.transform.position;
		cloud01 = (GameObject)Instantiate(prefab, new Vector3(0, 1, -250), Quaternion.Euler(0, 0, 0));
		cloud02 = (GameObject)Instantiate(prefab, new Vector3(0, 1, 250), Quaternion.Euler(0, 0, 0));
		Destroy(cloud01, 500/speed+1f);
		Destroy(cloud02, 750/speed+1f);
	}

	//GameObject cloudNew;
	public List<GameObject> cloudList = new List<GameObject>();
	// Update is called once per frame
	void Update () {
        float x = Input.GetAxis("GametrakX");
        float y = Input.GetAxis("GametrakY");
        float z = Input.GetAxis("GametrakZ");
        float x1 = Input.GetAxis("GametrakX1");
        float y1 = Input.GetAxis("GametrakY1");
        float z1 = Input.GetAxis("GametrakZ1");
        //Debug.Log("Gametrak: " + x + ", " + y + ", " + z + ", " + x1 + ", " + y1 + ", " + z1);
		curTime = Time.time;
        z_diff = (z1 - z) * 100 / 20;
        //cloud keep flying backward
        //if(Time.)
		if(curTime < 500/speed+1f){
        	cloud01.transform.Translate(0, 0, -Time.deltaTime * speed);
			cloud01.transform.Translate(Time.deltaTime* turnSpeed * z_diff, 0, 0);
		}
		if(curTime < 750/speed+1f){
        	cloud02.transform.Translate(0, 0, -Time.deltaTime * speed);
       		 //direction change, trigged by gametrak z axis
        
        	cloud02.transform.Translate(Time.deltaTime * turnSpeed * z_diff, 0, 0);
		}


		Debug.Log (curTime - prevTime + "  " + 250/speed);
		if(curTime - prevTime > 500/speed || (curTime == 0 && prevTime == 0)){
			GameObject cloudNew = (GameObject)Instantiate(prefab, new Vector3(0, 1, 750), Quaternion.Euler(0, 0, 0));

			cloudList.Add(cloudNew);

			//cloudNew.transform.Translate(Time.deltaTime * turnSpeed * z_diff, 0, 0);
			prevTime = curTime;
		}

		foreach(GameObject cloud in cloudList){
			if(cloud.transform.position.z < -800){
				cloudList.Remove(cloud);
				Destroy(cloud);
			}
			else{
				cloud.transform.Translate(0, 0, -Time.deltaTime * speed);
				cloud.transform.Translate(Time.deltaTime * turnSpeed * z_diff, 0, 0);
			}
		}
		//if(cloudNew != null)
			//cloudNew.transform.Translate(0, 0, -Time.deltaTime * speed);
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