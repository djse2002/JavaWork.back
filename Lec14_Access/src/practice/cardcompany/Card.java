package practice.cardcompany;

public class Card {
	private int num;
	static int count = 0;
	
	public Card() {
		super();
		count++;
		System.out.println(count + " 번쨰 인스턴스 생성");
	}
	
	private static Card instance = null;
	public static Card getCardNumber() {
		if(instance == null) {
			instance = new Card();
		}
		return instance;
	}
	
	public Card(int num) {
		super();
		this.num = num;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public static int getCount() {
		return count;
	}
	public static void setCount(int count) {
		Card.count = count;
	}


	
	// TODO
	// 필요한 변수, 메소드, 생성자 정의하기

	
} // end class
