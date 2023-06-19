package com.kosta.visitors;

public class BookVO { //model
	
	private int num;
	private String name, email, home, contents;
	
	public BookVO() { } //useBean으로 객체 생성할때 디폴트 생성자 없으면 에러 발생할 수 있어서 만들어 놓음.
	
	

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHome() {
		return home;
	}

	public void setHome(String home) {
		this.home = home;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}
	
}
