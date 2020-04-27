package com.lec.java.lambda03;

/*
	 세가지 방법으로 자유자재로 구현할수 있어야 합니다.
	 방법 1) 클래스 implements 인터페이스 + 오버라이딩.
	 방법 2) 익명클래스
	 방법 3) 람다 표현식 lambda expression
*/
public class Lambda03Main {

	public static void main(String[] args) {
		System.out.println("익명 클래스, 람다 표현식 연습");
		
		// TODO
		// 방법 1) 클래스 implements 인터페이스 + 오버라이딩.
		//덧셈 연산
		Operable myOperate = new OperableImpl();
		double result = myOperate.operate(1.11,2.22);
		System.out.println("result = " + result);
		
		
		
		// 방법 2) 익명클래스
		//뺄셈
		Operable MyOperate2 = new Operable(){

			@Override
			public double operate(double x, double y) {
				// TODO Auto-generated method stub
				return x - y;
			}
			
		};
		result = MyOperate2.operate(3.42 , 1.52);
		System.out.println("result = " + result);
		
		
		
		// 방법 3) 람다 표현식 lambda expression
		//제곱
		Operable MyOperate3 = (x, y) -> Math.pow(x, y);
		System.out.println(MyOperate3.operate(3, 4));
		
		
		System.out.println("\n프로그램 종료");
	} // end main()
	
} // end class

 interface Operable{
	public abstract double operate(double x , double y);
}

class OperableImpl implements Operable{

	@Override
	public double operate(double x, double y) {
		// TODO Auto-generated method stub
		return x + y;
	}
	
}

