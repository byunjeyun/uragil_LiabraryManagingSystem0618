package com.uragil.LMS.dto;

public class BorrowDto {


	private int brcode;
	private String sdate;
	private String rdate;
	private String fk_bcode;
	private String fk_mid;
	private String brstate;
	public BorrowDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BorrowDto(int brcode, String sdate, String rdate, String fk_bcode, String fk_mid, String brstate) {
		super();
		this.brcode = brcode;
		this.sdate = sdate;
		this.rdate = rdate;
		this.fk_bcode = fk_bcode;
		this.fk_mid = fk_mid;
		this.brstate = brstate;
	}
	public int getBrcode() {
		return brcode;
	}
	public void setBrcode(int brcode) {
		this.brcode = brcode;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getFk_bcode() {
		return fk_bcode;
	}
	public void setFk_bcode(String fk_bcode) {
		this.fk_bcode = fk_bcode;
	}
	public String getFk_mid() {
		return fk_mid;
	}
	public void setFk_mid(String fk_mid) {
		this.fk_mid = fk_mid;
	}
	public String getBrstate() {
		return brstate;
	}
	public void setBrstate(String brstate) {
		this.brstate = brstate;
	}
	
	
	
	
	}
