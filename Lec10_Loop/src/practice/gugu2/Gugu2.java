package practice.gugu2;

public class Gugu2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*for (int dan =2; dan <= 9; dan++) {
			System.out.println(dan);
			for (int n =1; n <= 9; n++) {
				System.out.println(dan  +"X" + n + "=" + (dan * n) );
			}
		System.out.println();	
		
		}*/
		
		

		/*for( int i=1; i<=9; i ++) {
		for( int dan=2; dan<=9; dan++) { 
			
			System.out.print(dan+"x"+i +"=" + (dan*i)+ "\t");
			}	
			System.out.println(" ");
			}*/
		for (int i=2; i<10; i= i+3)
		{
		 for (int j=1; j<9; j++)
		{
		 for (int k=i; k<i+3; k++)
		{ 
		 System.out.print(k+ "X" + j + "=" + j*k +"\t");
		 
		}
		System.out.println();
		}
		 
		}
		
		
		
	}

}
