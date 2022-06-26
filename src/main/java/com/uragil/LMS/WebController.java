package com.uragil.LMS;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uragil.LMS.dao.IDao;
import com.uragil.LMS.dto.BookDto;
import com.uragil.LMS.dto.BorrowDto;
<<<<<<< HEAD
import com.uragil.LMS.dto.MemberDto;
=======

>>>>>>> refs/remotes/origin/master




@Controller
public class WebController {

	
	@Autowired
	private SqlSession sqlSession;
	

	@RequestMapping(value="/")
	public String home() {
		
		return "index";
			
		}
	
	@RequestMapping(value="/index")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping(value="/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value="/join")
	public String join() {
		
		return "join";
	}
	
	
	@RequestMapping(value ="/joinOk", method=RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String mphone = request.getParameter("mphone");
						
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);
		
		if (checkId != 1) {
		
			dao.joinDao(mid, mpw, mname, mphone);
			
			HttpSession session = request.getSession();
			
			session.setAttribute("id", mid);
			session.setAttribute("name", mname);
			
			model.addAttribute("mname", mname);
			model.addAttribute("mid", mid);
		}
		
		model.addAttribute("checkId", checkId);
		
		return "joinOk";
	}
	
	
	@RequestMapping(value = "/loginOk", method=RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);
		int checkPw = dao.checkPwDao(mid, mpw);
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkPw", checkPw);
		
		
						
		if (checkPw == 1) {
							
			MemberDto memberDto = dao.loginInfoDao(mid);
			HttpSession session = request.getSession();
			
			session.setAttribute("id", memberDto.getMid());
			session.setAttribute("name", memberDto.getMname());
			
			model.addAttribute("mid", memberDto.getMid());
			model.addAttribute("mname", memberDto.getMname());
			}
			
				
		return "loginOk";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "login";
				
	}
	
<<<<<<< HEAD
	@RequestMapping(value ="/book_list")
	public String book_list(HttpServletRequest request,  Model model) {
		
		String searchKeyword = request.getParameter("searchKeyword");
		String searchOption = request.getParameter("searchOption");
		System.out.println(searchKeyword);		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		
		
		
		ArrayList<BookDto> bDtos = null;
		ArrayList<BorrowDto> brDtos = null;
		if(searchOption == null || searchKeyword == null) {
			bDtos = dao.b_listDao();
			brDtos = dao.br_listDao();
		} else {
			if(searchOption.equals("title")) {
				//제목 특정 키워드 검색한 결과
				bDtos = dao.TitleSearchlistDao(searchKeyword);
			} else if(searchOption.equals("categori") ) {
				//장르 특정 키워드 검색한 결과
				bDtos = dao.CategoriSearchlistDao(searchKeyword);
			} else {
				//글쓴이에서 특정 키워드 검색한 결과
				bDtos = dao.WriterSearchlistDao(searchKeyword);
			}
		
		}
				
		
		
		model.addAttribute("b_list", bDtos);
		model.addAttribute("br_list", brDtos);

		return "book_list";
		
		
	}
	
	
	@RequestMapping(value="/book_input")
	public String book_input() {
		
		return "book_input";
	}
	
	
	@RequestMapping(value ="/book_inputOk")
	public String b_inputOk(HttpServletRequest request, Model model) {
		
		String bname = request.getParameter("bname");
		String bcategori = request.getParameter("bcategori");
		String bwriter = request.getParameter("bwriter");
		
						
		IDao dao = sqlSession.getMapper(IDao.class);
		
			dao.b_inputDao(bname, bcategori, bwriter);
			
		return "redirect:book_list";
	}
	
	
	
//	
	@RequestMapping(value ="/br_list")
	public String br_list(HttpServletRequest request, Model model) {
		
		String searchKeyword = request.getParameter("searchKeyword");
		String searchOption = request.getParameter("searchOption");
		System.out.println(searchKeyword);		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BorrowDto> brDtos = null;
		if(searchOption == null || searchKeyword == null) {
			brDtos = dao.br_listDao();
		} else {
			if(searchOption.equals("brmid")) {
				//제목에서 특정 키워드 검색한 결과
				brDtos = dao.IdSearchlistDao(searchKeyword);
			}
		}
		
						
		model.addAttribute("br_list", brDtos);
		
		return "br_list";
		
	}
//	
//	
	@RequestMapping(value="/br_input")
	public String br_input() {
		
		return "br_input";
	}
	
	
	@RequestMapping(value ="/br_inputOk")
	public String br_inputOk(HttpServletRequest request, Model model) {
		String brbcode = request.getParameter("brbcode");
		String brmid = request.getParameter("brmid");
								
		IDao dao = sqlSession.getMapper(IDao.class);
		
			dao.br_inputDao(brbcode, brmid);
			dao.bstateDao();
			    
		return  "redirect:br_list";
	}
	
	
=======
	@RequestMapping(value ="/b_list")
	public String b_list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BookDto> bDtos = dao.b_listDao();
		
		model.addAttribute("b_list", bDtos);
		
		return "b_list";
	}
	
	
	@RequestMapping(value="/book_input")
	public String book_input() {
		
		return "book_input";
	}
	
	
	@RequestMapping(value ="/b_inputOk", method=RequestMethod.POST)
	public String b_inputOk(HttpServletRequest request, Model model) {
		String bcode = request.getParameter("bcode");
		String bname = request.getParameter("bname");
		String bcategori = request.getParameter("bcategori");
		String bwriter = request.getParameter("writer");
		String bstate = request.getParameter("bstate");
						
		IDao dao = sqlSession.getMapper(IDao.class);
		
			dao.b_inputDao(bcode, bname, bcategori, bwriter, bstate);
			
		return "br_inputOk";
	}
	
	
	@RequestMapping(value ="/br_list")
	public String br_list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BorrowDto> brDtos = dao.br_listDao();
		
		model.addAttribute("br_list", brDtos);
		
		return "br_list";
	}
	
	
	@RequestMapping(value="/br_input")
	public String br_input() {
		
		return "br_input";
	}
	
	
	@RequestMapping(value ="/br_inputOk", method=RequestMethod.POST)
	public String br_inputOk(HttpServletRequest request, Model model) {
		String brcode = request.getParameter("brcode");
		String brbcode = request.getParameter("brbcode");
		String brmid = request.getParameter("brmid");
		String bstate = request.getParameter("bstate");
						
		IDao dao = sqlSession.getMapper(IDao.class);
		
			dao.br_inputDao(brcode, brbcode, brmid, bstate);
			
		return "br_inputOk";
	}
>>>>>>> refs/remotes/origin/master
}
	

