package kr.or.kosa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosa.dao.MemoDao;


@WebServlet("/memoshow")
public class MemoShow extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("memo show!!");
		MemoDao dao = new MemoDao();

		String id = request.getParameter("id");
		System.out.println(id);


		try {

			request.setAttribute("memo", dao.searchId(id)); /* memo라는 이름(key)으로 데이터를 보내줌 */
			RequestDispatcher dispatcher = request.getRequestDispatcher("/memoShow.jsp");
			dispatcher.forward(request, response);


		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
