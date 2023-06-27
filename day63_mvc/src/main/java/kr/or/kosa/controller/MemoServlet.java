package kr.or.kosa.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;
import kr.or.kosa.dto.MemoDto;

@WebServlet("/memo")
public class MemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MemoServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		//1. 한글처리
		//2. 데이터 받기 ~ request.getParameter();
		//3. DB연결
		//4. insert 실행
		//5. 응답구성

		//디비(SQL) 관련 에러 발생시 알려줌
		DriverManager.setLogWriter(new PrintWriter(System.out));
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8"); //클라이언트에게 전달한 페이지의 정보 구성
		PrintWriter out = response.getWriter(); //추상클래스라서 new로 만들 수 없음.
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		
		//out.print(id + ", "+ email + ", " + content);
		
		MemoDao dao = new MemoDao();
		int su = dao.insertMemo(new MemoDto(id, email, content));
		
		if (su > 0) {
			out.print("<script>");
			out.print("alert('등록 성공!!!');");
			out.print("location.href='memolist';"); //jsp >> /memoList.jsp
			out.print("</script>");
		} else {
			out.print("<script>");
			out.print("alert('등록 실패!!!');");
			out.print("location.href='memo.html';");
			out.print("</script>");
		}
		
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}













