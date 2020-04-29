package test01;

import java.util.Scanner;

public class Test01Main {
	//실수 타입의 값을 두개 입력 받아서, 두개의 ‘합’과 ‘곱’ 을 출력하세요  (결과는 소숫점 한자리까지 출력하세요)
	//
	//[입력예]   [[출력예]]
	//2.3			5.4
	//3.1			7.1
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		   Scanner scan = new Scanner(System.in);
		   
	        System.out.print("첫 번째 계산할 값을 입력하세요: ");
	        double one = scan.nextDouble();
	 
	        System.out.print("두 번째 계산할 값을 입력하세요: ");
	        double two = scan.nextDouble();
	 
	        double num = one / two ;
	        double mod = one % two ;
	 
	        System.out.println(num);
	        System.out.println(String.format("%.2f",mod));

	}
}




