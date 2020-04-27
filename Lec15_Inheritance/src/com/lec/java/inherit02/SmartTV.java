package com.lec.java.inherit02;

// Basic TV
//  smartTV
public class SmartTV extends BasicTV{
	String ip;
	
	
	public void displayInfo() {
		super.displayInfo();
		System.out.println("ip 주소: " + ip);
	}
}
