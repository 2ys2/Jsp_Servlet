package edu.kosa.gift;

public class giftVO { // Model
	
	// 멤버변수
	private String gno;
	private String gname;
	private int g_start; 
	private int g_end;
	
	// 생성자함수
	public giftVO() { } // useBean 태그 이용해서 객체 생성

	public String getGno() {
		return gno;
	}

	public void setGno(String gno) {
		this.gno = gno;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public int getG_start() {
		return g_start;
	}

	public void setG_start(int g_start) {
		this.g_start = g_start;
	}

	public int getG_end() {
		return g_end;
	}

	public void setG_end(int g_end) {
		this.g_end = g_end;
	}
	
	
	

}
