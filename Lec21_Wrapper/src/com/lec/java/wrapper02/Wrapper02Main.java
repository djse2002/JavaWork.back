package com.lec.java.wrapper02;

/* Java 5부터 wrapper 클래스의 auto-boxing/unboxing 기능 제공
 * 	boxing(포장): 기본자료형의 값을 wrapper 클래스에 저장하는 것
 * 	unboxing(개봉): wrapper 클래스에 저장된 기본자료형 값을 꺼내는 것
 */
public class Wrapper02Main {

	public static void main(String[] args) {
		System.out.println("auto-boxing, auto-unboxing");

		// TODO
		Integer num1 = 10; // Integer.valueOf(10); <-- auto-boxing
		Integer num2 = 20;
		System.out.println(num1+ num2); // atuto-unboxing
		System.out.println(num1.intValue() + num2.intValue()); //<-- 이와 같이 동작
		
		Integer num3 = num1 + num2;
		// 아래와 같이 동작한다.
		Integer num30 =  Integer.valueOf(num1.intValue() + num2.intValue());
		System.out.println(num30);
		
		System.out.println();
		System.out.println("boxing/unboxing");
		// boxing(포장): 기본자료형의 값을 wrapper 클래스에 저장하는 것
		// unboxing(개봉): wrapper 클래스에 저장된 기본자료형 값을 꺼내는 것
		
		// TODO
		Integer num4 = 100; //Integer.valueOf(100);
		int     n4   = num4; // num4.intValue();
		System.out.println();
		
		System.out.println();
		System.out.println("auto-boxing/auto-unboxing");

		// TODO
		
		
		System.out.println();
		System.out.println("wrapper 클래스들");
		
		Long num100 = Long.valueOf(10000000000000000L);
		Long num101 = 1000000000000000000L;
		// TODO
		
		
		System.out.println("\n프로그램 종료");
	} // end main()

} // end class















