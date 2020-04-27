package test01;

import java.util.Scanner;

public class Test02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String word = "POWER"; //스트링 문자 POWER
		
		String[] array_word; // 스트링을 담을 배열

		//사실상 가장 간단함
		array_word = word.split(""); //배열에 한글자씩 저장하기
				
		for(int i=0;i<array_word.length;i++) { //출력
		    System.out.println(array_word[i]);
		}

	}
}