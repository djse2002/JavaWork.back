package practice.stddev;
/*
 * [입력값]
 * 81 76 81 55 36 
 * [결과]
 * 평균: 65.8
 * 분산: 314.16
 * 표준편차: 17.72455923288362
 * 
 * */
import java.util.Scanner;

public class StdDev {

	private static final double[] num = null;

	public static void main(String[] args) {

		// TODO
		// 임의정수 5개로 초기화한 정수로
		// 평균, 분산, 표준편차 구하기
		System.out.println("임의 정수 5개 평균, 분산, 표준편차 구하기");
		Scanner sc = new Scanner(System.in);

		int[] num = new int[5];


		// 정수 입력
		inputScore(sc, num);
		int total = calcTotal(num);
		System.out.println("총합: " + total);

		double avg = calcAvg(num);
		System.out.println("평균: " + avg);
		
		sc.close();

	} // end main

	/**
	 * 메소드 이름 : calcAvg 매개변수 : int [] 리턴값 : double
	 * 
	 * 주어진 배열의 '평균값' 리턴
	 */
	// TODO
	public static double calcAvg(int[] score) {
		//double avg1 = 0;
		int total = 0;
		for (int x : score) {
			total += x;
		}
		double avg = total / 5.0;
		return avg;
	}

	/**
	 * 메소드 이름 : calcVariance 매개변수 : int [] 리턴값 : double
	 * 
	 * 주어진 배열의 '분산값' 리턴
	 */
	// TODO 
	//public static double calcVariance(int[] calcVar) {
		
		
		
	//}
	

	/**
	 * 메소드 이름 : calcStdDev 매개변수 : int [] 리턴값 : double
	 * 
	 * 주어진 배열의 '표준편차' 리턴
	 */
	// TODO
	
	// public static double calcStdDev(int[] calcS) {
	 
	//}
	
	
	
	
	
	

	// 정수 입력
	// method name: inputScore
	// return: void
	// arguments:
	// 1) Scanner sc - 입력장치
	// 2) int[] score: 정수를 입력받아서 저장할 배열
	public static void inputScore(Scanner sc, int[] score) {
		//for (int i = 1; i <= 5; i++) {
		for (int j = 0; j < score.length; j++) {
			System.out.println("정수" + (j) + " 입력:");
			score[j] = sc.nextInt();
		}
	}

	// method name: calcTotal
	// return: int (계산된 정수을 리턴)
	// arguments: int[] score (정수들을 저장한 배열)
	public static int calcTotal(int[] score) {
		int total = 0;
		for (int x : score) {
			total += x;
		}
		return total;
	}

} // end class
