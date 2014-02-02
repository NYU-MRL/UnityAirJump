using UnityEngine;
using System;
using System.Collections;
using System.IO.Ports;
 
public class FanController : MonoBehaviour {

	public float velocity;
	public float rotation;

	SerialPort serial;

	void Start () {
		serial = findArduino ();

		//updateFans (0, 0, 0);

//		forceRight = 0.0f;
//		forceLeft = 0.0f;
//		heightRight = 0.0f;
//		heightLeft = 0.0f;
	}
	
	void Update () {
		int mid = (int) map (velocity, 0, 60, 0, 3);
		int left=0, right=0;
		if (rotation < 0) {
			left =(int)  map (rotation, -90, 0, 3, 0);
		} 
		else {
			right = (int) map (rotation, 0, 90, 0, 3);
		}

		Debug.Log ("velocity = " + velocity);
		Debug.Log ("angle = " + rotation);
		//updateFans (left, mid, right);
	}

	private SerialPort findArduino() {
		SerialPort testPort;
		string[] ports = SerialPort.GetPortNames ();

		foreach (string port in ports) {
			testPort = new SerialPort(port, 9600);
			testPort.ReadTimeout = 50;
			testPort.WriteTimeout = 50;
			Debug.LogWarning("Serial: about to open");
			testPort.Open();
			Debug.LogWarning(" Serial: about to write");
			byte[] testMsg = {(byte) 0xC0 };

			testPort.Write(testMsg, 0, 1);
			Debug.LogWarning("Serial : just wrote");
			int msg = testPort.ReadChar();
			Debug.LogWarning("Serial : Got message " + msg);
			if (msg == 121) {
				Debug.LogWarning("found the arduino on port " + port);
				return testPort;
			} 
		}

		Debug.LogWarning ("didn't find the arduino");
		return null;
	}

	private void updateFans(int left, int mid, int right) {
		byte[] fans = {(byte) (left & 0x3 | (mid & 0x3) << 2 | (right & 0x3) << 4)};
		// probably send string "left,mid,right" to serial port
		serial.Write(fans,0,1);
	}

	public void BirdVelocity(Vector3 vel)
	{
		velocity = vel.magnitude;
	}

	public void BirdZRotation(float rot)
	{
		rotation = rot;
	}

	private float map(float x, float  inLow, float inHigh, float outLow, float outHigh){
		if (x > inHigh) {
			return outHigh;
		}

		if (x < inLow) {
			return outLow;
		}

		return (x - inLow) * (outHigh - outLow) / (inHigh - inLow) + outLow;
	}
}
