package test01;

import java.util.Scanner;

/*
[출력예]
2
화요일

[입력예]

6

[출력예]

토요일

[입력예]

8

[출력예]

잘못 입력하셨습니다
*/
 
public class Test03Main {
	public static void main(String[] args) {
		 Scanner sc = new Scanner(System.in);
	        int num = 0;
	        
	        while(true) {
	            System.out.print("수를 입력하세요 : ");
	            num = sc.nextInt();
	            num = num%7;
	            switch(num) {
	            case 1:
	                System.out.println("월요일");
	                break;
	            case 2:
	                System.out.println("화요일");
	                break;
	            case 3:
	                System.out.println("수요일");
	                break;
	            case 4:
	                System.out.println("목요일");
	                break;
	            case 5:
	                System.out.println("금요일");
	                break;
	            case 6:
	                System.out.println("토요일");
	                break;
	            case 7:
	                System.out.println("일요일");
	                break;
	            default :
	                System.out.println("잘못 입력하셨습니다.");
	            }
	        }
	    }
	}