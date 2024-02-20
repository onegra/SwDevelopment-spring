package com.itbank.utils;

interface IntOperator {
	int calc(int x, int y);
}
public enum Exp {

	PLUS("+", (x, y) -> x + y),
	MINUS("-", (x, y) -> x - y),
	MULTI("*", (x, y) -> x * y),
	DIVIDE("/", (x, y) -> x / y);
		
	private final String operator;
	private final IntOperator lambda;
	
	private Exp(String operator, IntOperator lambda) {
		this.operator = operator;
		this.lambda = lambda;
	}
	public String getOperator() {
		return operator;
	}
	public int getAnswer (int x, int y) {
		return lambda.calc(x, y);
	}
}
