package 배열1.자가진단09;

import java.util.Scanner;

/*10개의 정수를 입력받아 배열에 저장한 후 내림차순으로 정렬하여 출력하시오.
 * [입력 예]
 * 95 100 88 65 76 89 58 93 77 99
 * [출력 예]
 * 100 99 95 93 89 88 77 76 65 58
 */
public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		int[] array = new int[10];
		for (int i = 0; i < array.length; i++) {
			array[i] = sc.nextInt();
		}
		sc.close();

		// 배열 정렬하기
		// bubble sort
		
		// cycle
		for(int i = array.length; i > 0; i--) {
			// 비교
			for(int j = 0; j < i - 1; j++) {
				if(array[j] < array[j + 1]) {
					int temp = array[j];
					array[j] = array[j + 1];
					array[j + 1] = temp;
				}
			}
		}
		
		for (int i = 0; i < array.length; i++) {
			System.out.print(array[i] + " ");
		} // end for

		System.out.println();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	/*	Scanner sc = new Scanner(System.in);
		
		int[] num  = new int[10];
		//int[] sort = new int[10];
		
		
		System.out.println("정수를 입력하세요");
		for (int i = 0; i < num.length; i++) {
		num[i] = sc.nextInt();
		
	}
		sc.close();
		
		for (int j = 0; j < sort.length; j++) {
			sort[j] = sc.nextInt();
				
			}
		}
		//System.out.print();
	}*/

		
		
	}
}
		

