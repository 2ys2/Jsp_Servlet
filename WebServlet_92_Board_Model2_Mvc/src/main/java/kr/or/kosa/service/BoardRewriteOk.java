package kr.or.kosa.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;
import kr.or.kosa.dao.BoardDao;
import kr.or.kosa.dto.BoardDto;

public class BoardRewriteOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String strIdx = request.getParameter("idx").trim();		
		String subject = request.getParameter("subject");
		String writer = request.getParameter("writer");
		String email = request.getParameter("email");
		String homepage = request.getParameter("homepage");
		String content = request.getParameter("content");
		String pwd = request.getParameter("pwd");
		String filename = request.getParameter("filename");
		String msg="";
	    String url="";
		
				
		try {
			int idx = Integer.parseInt(strIdx);
			
			BoardDto board = new BoardDto();
			
			board.setSubject(subject);
			board.setWriter(writer);
			board.setEmail(email);
			board.setHomepage(homepage);
			board.setContent(content);
			board.setPwd(pwd);
			board.setFilename(filename);
			board.setIdx(idx);

			BoardDao dao = new BoardDao();
			
			int result = dao.reWriteOk(board);

		    if(result > 0){
		    	msg ="rewrite insert success";
		    	url ="BoardList.do";
		    }else{
		    	msg="rewrite insert fail";
		    	url="BoardContent.do?idx="+board.getIdx();
		    }
		    
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("board_msg",msg);
		request.setAttribute("board_url", url);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/WEB-INF/views/board/redirect.jsp");
		
		return forward;
	}

}
