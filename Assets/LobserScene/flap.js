#pragma strict

//public var off : float;
var count : float;

function Start () {
	count=0;
}

function Update () {
	count+=.1;
//	transform.Rotate(0,0,-.5+Mathf.Sin(Time.deltaTime*10));
	transform.Rotate(0,0,-.5+(Mathf.Sin(count))*5);
	Debug.Log(Mathf.Sin(Time.deltaTime*10));
}