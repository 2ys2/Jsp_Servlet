package edu.kosa.quiz;

public class GiftVO { //model
	private int gno;
	private String gname;
	private int g_start;
	private int g_end;
	
	public GiftVO() {
		this.gno = gno;
		this.gname = "name";
		this.g_start = g_start;
		this.g_end = g_end;
		/*
		 * this.gno = 1; this.gname = "참치세트"; this.g_start = 1; this.g_end = 1000000;
		 */	}
	
	public int getGno() {
		return gno;
	}
	public void setGno(int gno) {
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
	
	@Override
	public String toString() {
		return "GiftVO [gno=" + gno + ", gname=" + gname + ", g_start=" + g_start + ", g_end=" + g_end + "]";
	}

}
