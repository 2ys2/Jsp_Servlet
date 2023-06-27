package kr.or.kosa.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;

@WebServlet("/memomodify")
public class MemoModify extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemoDao dao = new MemoDao();
		String id = request.getParameter("id");

		try {
			request.setAttribute("memo", dao.searchId(id));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/memoModify.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//디비(SQL) 관련 에러 발생시 알려줌
		DriverManager.setLogWriter(new PrintWriter(System.out));

		//1. 한글처리
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8"); //클라이언트에게 전달한 페이지의 정보 구성
		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		
		try {
			MemoDao dao = new MemoDao();
			int su = dao.modifyMemo(id, email, content);

			if (su > 0) {
				out.print("<script>");
				out.print("alert('수정 성공!!!');");
				out.print("location.href='memolist';");
				out.print("</script>");
			} else {
				out.print("<script>");
				out.print("alert('수정 실패!!!');");
				out.print("history.go(-1);");
				out.print("</script>");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} 



	}

}
