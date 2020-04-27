package com.lec.java.loop03;

public class Loop03Main {

	public static void main(String[] args) {
		System.out.println("중첩 for 문 nested for");

		// 구구단 출력 : 중첩 for 사용
		// TODO
		for(int dan =2; dan <= 9; dan++) { 
			System.out.println(dan + "단");
			for(int n =1; n <=9; n++) {    
				System.out.println(dan + " X" + n + "=" + (dan * n));	
			}
			System.out.println();
		}
		
		
		// 구구단 출력 : 중첩 while 문 사용
		// TODO
		int dan =2;
		while (dan < 10) {
			dan++;
			System.out.println(dan + "단");
		
		int n=1;
		while (n < 10) {
				System.out.println(dan + "X" + n +"=" +(dan * n));
				n++;
			}
			System.out.println();
		}
		
		
		System.out.println("\n프로그램 종료");
	} // end main()

} // end class


















