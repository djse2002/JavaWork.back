package com.lec.java.collection02;

import java.util.ArrayList;
import java.util.Iterator;

public class Collection02Main {

	public static void main(String[] args) {
		System.out.println("ArrayList 연습");
		//TODO:
		// String 타입을 담는 ArrayList를 만들고
		// 5개 이상의 String을 저장하고
		// set(), remove() 등의 메소드 사용하여
		// 임의의 것을 수정, 삭제 도 해보시고
		// 3가지 방식으로 출력해보세요
		//  for, Enhanced-for, Iterator
		
		ArrayList<String> list1 = new ArrayList<String>();
		
		list1.add("Java");
		list1.add("JS");
		list1.add("Phyton");
		list1.add("C++");
		list1.add("JavaScipt");

		System.out.println("size(): " + list1.size());
		for (int i = 0; i < list1.size(); i++) {
			System.out.println(list1.get(i));
		}
		
		System.out.println();
		
		//수정
		System.out.println("size(): " + list1.size());
		list1.set(2, "Spring");
		System.out.println("수정후: ");
		for (int i = 0; i < list1.size(); i++) {
			System.out.println(list1.get(i));
		}
		
		
		System.out.println();
		
		
		// 삭제
		list1.remove(2);
		System.out.println("size(): " + list1.size());
		System.out.println("삭제후: " );
		for (int i = 0; i < list1.size(); i++) {
			System.out.println(list1.get(i));
		}
		
		System.out.println();
		
		//Enhanced-for
		for(String e : list1) {
			System.out.println(e);
		}
		
		//Iterator
		Iterator<String> itr = list1.iterator();
		
		System.out.println("\n프로그램 종료");
	} // end main()

} // end class












