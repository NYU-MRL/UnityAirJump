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
		updateFans (0, 0, 0);
	}
	
	void Update () {
		// map velocity to middle fan, up to medium speed (2)
		int mid = (int)map (velocity, 0, 31, 0, 3);
		if (mid > 2) {
			mid = 2;
		}
		int left=0, right=0;
		if (rotation < 0) {
			left = (int)map (rotation, -21, 0, 4, 0);
			if (left>3) {
				left=3;
			}
		} 
		else {
			right = (int)map (rotation, 0, 11, 0, 4);
			if (right>3) { 
				right=3;
			}
		}

		if (left > 2 || right > 2) {
			mid++;
		}

		Debug.Log ("velocity = " + velocity);
		Debug.Log ("angle = " + rotation);
		updateFans (left, mid, right);
	}

	private SerialPort findArduino() {
		SerialPort testPort;
		string[] ports = SerialPort.GetPortNames ();

		foreach (string port in ports) {
			testPort = new SerialPort(port, 9600);
			testPort.Open();
			testPort.ReadTimeout = 50;
			testPort.WriteTimeout = 50;
			byte[] c = {0xc0};
			testPort.Write(c, 0, 1);
			int msg = testPort.ReadChar();
			if (msg == 121) {
				Debug.LogWarning("found the arduino on port " + port);
				return testPort;
			}
		}

		Debug.LogWarning ("didn't find the arduino");
		return null;
	}

	private void updateFans(int left, int mid, int right) {
		byte[] fans = {(byte)(left & 0x3 | (mid & 0x3) << 2 | (right & 0x3) << 4)};
		// probably send string "left,mid,right" to serial port
		serial.Write (fans, 0, 1);
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
