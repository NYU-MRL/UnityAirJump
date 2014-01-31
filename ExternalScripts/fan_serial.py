import os
import serial
import zmq
from serial.tools import list_ports
from time import sleep

def serial_ports():
    if os.name == "nt":
        for i in range(256):
            try:
                s = serial.Serial(i)
                s.close()
                yield 'COM' + str(i + 1)
            except serial.SerialException:
                pass
    else:
        for port in list_ports.comports():
            yield port[0]

def off():
    ser.write('0')

def low():
    ser.write('1')

def medium():
    ser.write('2')

def high():
    ser.write('3')

print("initializing zmq")
context = zmq.Context()
socket = context.socket(zmq.REP)
socket.bind("tcp://127.0.0.1:5000")

print("initializing arduino connection")
ports = list(serial_ports())
for port in ports:
    try:
        ser = serial.Serial(port)
        print("trying port: " + ser.port)
        ser.timeout = 0.5
        ser.write('c')
        msg = ser.read()
        if msg == 'y':
            continue
    except OSError:
        pass
print("done. ready to receive messages")

def main():

    while True:
        msg = socket.recv()
        print("received message " + msg)
    
        if msg == "0":
            off()
        elif msg == "1":
            low()
        elif msg == "2":
            medium()
        elif msg == "3":
            high()
    
        socket.send(msg)
        print("sending back message " + msg)

if __name__ == "__main__":
    main()
