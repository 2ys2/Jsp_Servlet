package kr.or.kosa.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;

@WebServlet("/memodelete")
public class MemoDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("memo delete!!");
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		MemoDao dao = new MemoDao();
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");

		try {
			int su = dao.deleteMemo(id);
			
			if (su > 0) {
				out.print("<script>");
				out.print("alert('삭제 되었습니다.!!!');");
				out.print("location.href='memolist';"); //
				out.print("</script>");
			} else {
				out.print("<script>");
				out.print("alert('삭제에 실패했습니다.!!!');");
				out.print("history.go(-1);");
				out.print("</script>");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}





	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
