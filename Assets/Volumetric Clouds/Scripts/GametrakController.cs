// Arowx.com 2013 - free to use and improve!

using UnityEngine;

using System.Collections;



public class GametrakController : MonoBehaviour {

	void Start()	
	{

		
	}
	
	void Update () {
		float x = Input.GetAxis("GametrakX");

		float y = Input.GetAxis("GametrakY");

		float z = Input.GetAxis("GametrakZ");

		float x1 = Input.GetAxis("GametrakX1");
		
		float y1 = Input.GetAxis("GametrakY1");
		
		float z1 = Input.GetAxis("GametrakZ1");

		Debug.Log("Gametrak: " + x + ", " + y + ", " + z + ", " + x1 + ", " + y1 + ", " + z1);
	}
	
}