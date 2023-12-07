package com.ji.springP001.Board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ji.springP001.Member.MemberDAO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardDAO bDAO;
	
	@Autowired
	private MemberDAO mDAO;
	
	@RequestMapping(value = "/board.go", method = RequestMethod.GET)
	public String home(HttpServletRequest req) throws Exception {
		
		if(mDAO.loginCheck(req)) {
			req.setAttribute("result", "게시판 이동!");
			req.setAttribute("content", "board/boardMain.jsp");
		}else {
			req.setAttribute("result", "게시판 이동!");
			req.setAttribute("content", "board/boardMain.jsp");	
		}
		return "index";
		
	}

}
