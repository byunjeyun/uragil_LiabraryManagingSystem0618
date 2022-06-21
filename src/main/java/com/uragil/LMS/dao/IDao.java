package com.uragil.LMS.dao;

import java.util.ArrayList;

import com.uragil.LMS.dto.BookDto;
import com.uragil.LMS.dto.MemberDto;


public interface IDao {
	
	//memberDao
	public void joinDao(String mid, String mpw, String mname, String mphone);
	
	public int checkIdDao(String mid);

	public int checkPwDao(String mid, String mpw);

	public MemberDto loginInfoDao(String mid);



	//bookDao
	public ArrayList<BookDto> listDao();//리스트 가져오기
	
	
}