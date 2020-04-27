package 반복제어문1.자가진단02;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("수를 입려하세요");
		
		
		
		  int n=sc.nextInt();
		  int i=1, sum=0;

		  while(i<=n) {
		   sum+=i;
		   i++;
		  }
		  System.out.println("\n1부터 " + n + "까지의 합 : " + sum);

		 }
		
		
//		int n = sc.nextInt();
//		int i =0, sum=0;
//		while(n<100) {
//			sum++;
//			i++;
//			
//		}
//		
//			System.out.println("합" + sum);
//		sc.close();
//		
	}


