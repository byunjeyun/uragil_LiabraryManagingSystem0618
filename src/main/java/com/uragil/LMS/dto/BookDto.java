package com.uragil.LMS.dto;

public class BookDto {


	private int bcode;
	private String bname;
	private String bcategori;
	private String bwriter;
	private String bstate;
	private String brcode;
	
	public BookDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getBcode() {
		return bcode;
	}

	public void setBcode(int bcode) {
		this.bcode = bcode;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBcategori() {
		return bcategori;
	}

	public void setBcategori(String bcategori) {
		this.bcategori = bcategori;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public String getBstate() {
		return bstate;
	}

	public void setBstate(String bstate) {
		this.bstate = bstate;
	}

	public String getBrcode() {
		return brcode;
	}

	public void setBrcode(String brcode) {
		this.brcode = brcode;
	}
	
	
}
