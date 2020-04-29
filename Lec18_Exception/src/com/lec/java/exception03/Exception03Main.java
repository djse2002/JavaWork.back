package com.lec.java.exception03;

import java.nio.file.AtomicMoveNotSupportedException;

/*  예외 처리: try ~ catch
  	연습 01패키지에서 발생하던 예외들을 try~catch로 잡아보자 
  	
 	 주의! : try 블럭 안에서 선언된 변수는 try 블럭안에서만 사용되는 지역변수가 된다.
	     catch 블럭등 다른 블럭에서도 사용 가능하게 하려면 try 바깥에서 선언해야 한다
 */
public class Exception03Main {

	public static void main(String[] args) {
		System.out.println("예외 처리: try ~ catch");
		
		System.out.println();
		System.out.println("[1] ArithmeticException");
		int num1 = 0;
		int num2 = 0;
		
		// TODO : try ~ catch 로 감싸기
		try {			
			System.out.println("num1 / num2 = " + (num1 / num2));
		} catch(ArithmeticException ex) {
			System.out.println(num1 + " 은 " + num2 + "로 나누지 말라능");
			System.out.println(ex.getMessage());
		}
		
		
		System.out.println();
		System.out.println("[2] ArrayIndexOutOfBoundsException");

		// TODO : try ~ catch 로 감싸기
		int[] numbers = new int[10];
		numbers[100] = 111;
		try {
			// 수행 블럭
			
 			System.out.println("정상");
		} catch(ArithmeticException ex) {
			System.out.println();
			System.out.println(ex.getMessage());
		}
		
		
		
		System.out.println();
		System.out.println("[4] NullPointerException");

		// TODO : try ~ catch 로 감싸기
		String str = null;
		System.out.println("스트링 길이: " + str.length());

		try {
			System.out.println("정상");
		} catch(ArithmeticException ex) {
			System.out.println();
			System.out.println(ex.getMessage());
		}
		
		System.out.println();
		System.out.println("[5] ClassCastException");

		// TODO : try ~ catch 로 감싸기
		Object obj = new int[10];
		String str2 = (String)obj;
		
		try {
			System.out.println("정상");
		} catch(ArithmeticException ex) {
			System.out.println();
			System.out.println(ex.getMessage());
		}
		

	} // end main

} // end class Exception03Main












