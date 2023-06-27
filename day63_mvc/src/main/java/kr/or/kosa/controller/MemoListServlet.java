package kr.or.kosa.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;
import kr.or.kosa.dto.MemoDto;

@WebServlet("/memolist")
public class MemoListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("List Servlet!");
		MemoDao dao = new MemoDao();
		
		try {
			List<MemoDto> list = dao.selectAllMemo();
			//데이터 저장
			req.setAttribute("list", list);
			//view page
			RequestDispatcher dispatcher = req.getRequestDispatcher("/memoList.jsp");
			//forward
			dispatcher.forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}



}
