package com.uragil.LMS.dao;

import java.util.ArrayList;

import com.uragil.LMS.dto.BookDto;
import com.uragil.LMS.dto.BorrowDto;
import com.uragil.LMS.dto.MemberDto;


public interface IDao {
	
	//memberDao
	public void joinDao(String mid, String mpw, String mname, String mphone);
	
	public int checkIdDao(String mid);

	public int checkPwDao(String mid, String mpw);

	public MemberDto loginInfoDao(String mid);



	//bookDao
	public ArrayList<BookDto> b_listDao();//리스트 가져오기
	public void b_inputDao(String bcode, String bname, String bcategori, String bwriter, String bstate);
	
	
	//brDao
	public ArrayList<BorrowDto> br_listDao();//리스트 가져오기
	public void br_inputDao(String brcode, String brbcode, String brmid, String bstate);
}