package test01;

import java.util.Date;

public class TicketReservation {

	private double uid; 
	private double movieId;     
	private String seatId;      
	public Date regDate;    

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
	}
	// 기본생성자
	public TicketReservation() {
		super();
	}
	// 매개변수 생성자
	public TicketReservation(double uid, double movieId, String seatId, Date regDate) {
		super();
		this.uid = uid;
		this.movieId = movieId;
		this.seatId = seatId;
		this.regDate = regDate;
	}
	//  getter & setter 
	public double getUid() {
		return uid;
	}

	public void setUid(double uid) {
		this.uid = uid;
	}

	public double getMovieId() {
		return movieId;
	}

	public void setMovieId(double movieId) {
		this.movieId = movieId;
	}

	public String getSeatId() {
		return seatId;
	}

	public void setSeatId(String seatId) {
		this.seatId = seatId;
	}

	public date getRegDate() {
		return regDate;
	}

	public void setRegDate(date regDate) {
		this.regDate = regDate;
	}

}
