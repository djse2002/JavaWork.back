package com.lec.java.static03;

public class Test {
	private int num;

	static int count =0;
	
	//singleton 패턴
	//기본생성자
	private Test() {
		super();
		count++;
		System.out.println(count + " 번쨰 인스턴스 생성");
	}

	private static Test instance = null;
	public static Test getInstance() {
		if(instance == null) {
			instance = new Test(); // 인스턴스 생성!
		}
		return instance;
	}
	
	
	
	
	
	
	// getter & setter
		
	public int getNum() {
		return num;
	}
	
	
	public void setNum(int num) {
		this.num = num;
	}
}

