package com.uragil.LMS.dto;

public class MemberDto {


	private int mnid;
	private String mpw;
	private String mname;
	private String mphone;
	private String brcode;
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberDto(int mnid, String mpw, String mname, String mphone, String brcode) {
		super();
		this.mnid = mnid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.brcode = brcode;
	}
	public int getMnid() {
		return mnid;
	}
	public void setMnid(int mnid) {
		this.mnid = mnid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getBrcode() {
		return brcode;
	}
	public void setBrcode(String brcode) {
		this.brcode = brcode;
	}
	
	
	
}
