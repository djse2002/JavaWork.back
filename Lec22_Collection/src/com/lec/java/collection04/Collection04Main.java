package com.lec.java.collection04;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

import com.lec.java.collection03.Student;

public class Collection04Main {

	public static void main(String[] args) {
		System.out.println("ArrayList 연습");

		
		// MemberModel 타입을 담는 ArrayList를 만드고
		// 사용자로부터 3개의 Student 데이터 을 입력받아서
		//    (id, passwd)
		// 3가지 방법으로 출력해보세요. 
		// for, Enhanced-for, Iterator
		// TODO
		ArrayList<MemberModel> list = new ArrayList<MemberModel>();
		Scanner sc = new Scanner(System.in);
		
		for (int i = 0; i < 3; i++) {
			
			System.out.println("id: ");
			String id = sc.nextLine();
			
			System.out.println("pw: ");
			String passwd = sc.nextLine();
			
			
			MemberModel mem = new MemberModel(id, passwd);
			list.add(mem);
		}
		sc.close();
		
		/*
		 * for(MemberModel e : list) { System.out.println(e); }
		 */
		Iterator<MemberModel> itr = list.iterator();
		while(itr.hasNext()) {
			itr.next().displayInfo();
		}
		
	
		
		
		
		
		System.out.println("\n프로그램 종료");
	} // end main()

} // end class












