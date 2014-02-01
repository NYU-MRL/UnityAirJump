using UnityEngine;
using System;
using System.Collections;
using System.IO.Ports;

public class FanController : MonoBehaviour {

	float forceRight, forceLeft, heightRight, heightLeft;
	float frDiff, flDiff, hrDiff, hlDiff;

	SerialPort serial;

	void Start () {
		serial = findArduino ();

		forceRight = 0.0f;
		forceLeft = 0.0f;
		heightRight = 0.0f;
		heightLeft = 0.0f;
	}
	
	void Update () {
		// if height is increasing, decrease fans & vice versa
		// if force is increasing, increase fans & vice versa
		int leftFan = Convert.ToInt32 (map (flDiff, -100.0f, 100.0f, 1.0f, 3.0f));
		int rightFan = Convert.ToInt32 (map (frDiff, -100.0f, 100.0f, 1.0f, 3.0f));
		int midFan = Convert.ToInt32((leftFan + rightFan) / 2.0);

		updateFans (leftFan, rightFan, midFan);
	}

	private SerialPort findArduino() {
		SerialPort testPort;
		string[] ports = SerialPort.GetPortNames ();

		foreach (string port in ports) {
			testPort = new SerialPort(port, 9600);
			testPort.Open();
			testPort.ReadTimeout = 50;
			testPort.WriteTimeout = 50;
			testPort.Write("c");
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
		// probably send string "left,mid,right" to serial port
		serial.Write (left.ToString());
	}

	public void BirdWingForceLR(Vector2 f){
		frDiff = f.y - forceRight;
		flDiff = f.x - forceLeft;
		
		forceRight = f.y;
		forceLeft = f.x;
	}
	
	public void BirdWingHeightLR(Vector2 h){
		hrDiff = h.y - heightRight;
		hlDiff = h.x - heightLeft;

		heightRight = h.y;
		heightLeft = h.x;
	}

	private float map(float x, float  inLow, float inHigh, float outLow, float outHigh){
		return (x - inLow) * (outHigh - outLow) / (inHigh - inLow) + outLow;
	}
}
