package com.uragil.LMS.dao;

import com.uragil.LMS.dto.MemberDto;

public interface IDao {
	
	//memberDao
	public void joinDao(String mid, String mpw, String mname, String mphone);
	
	public int checkIdDao(String mid);

	public int checkPwDao(String mid, String mpw);

	public MemberDto loginInfoDao(String mid);
}
