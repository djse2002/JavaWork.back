package com.lec.java.class03;

public class Numeric {
	
	// 멤버변수
	private char ch;
	private byte operator;
	private int operand1;
	private int opernad2;
	public Numeric(char ch, byte operator, int operand1, int opernad2) {
		super();
		this.ch = ch;
		this.operator = operator;
		this.operand1 = operand1;
		this.opernad2 = opernad2;
	}
	public Numeric() {
		super();
	}
	public char getCh() {
		return ch;
	}
	public void setCh(char ch) {
		this.ch = ch;
	}
	public byte getOperator() {
		return operator;
	}
	public void setOperator(byte operator) {
		this.operator = operator;
	}
	public int getOperand1() {
		return operand1;
	}
	public void setOperand1(int operand1) {
		this.operand1 = operand1;
	}
	public int getOpernad2() {
		return opernad2;
	}
	public void setOpernad2(int opernad2) {
		this.opernad2 = opernad2;
	}
	
}
