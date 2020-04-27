package com.lec.java.final01;

public class Final01Main {
	// final 멤버 변수는
	// 반드시 선언과 동시에 초기화 해야 한다.
	final int NUM = 1; //초기화 안주면 오류 발생  ctl + shift +X(대문자), Y(소문자)
	
	public static void main(String[] args) {
		System.out.println("final: 변경할 수 없는 상수");
			
			int num1 = 1;
			num1 =10;
			
			
			final int num2 = 1;
			//num2 =10; //불가
			
			final int num3;
			num3 = 1; // final 지역변수는 선언 이후에 초기화 가능!
			
			
			
	} // end main()

} // end class Final01Main










