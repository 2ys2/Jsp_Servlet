package com.kosa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/kosa")
public class MessageProcess extends HttpServlet
								implements CommandProcess{

	@Override
	public String doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//저장 - 자신의 이름, 연락처
		request.setAttribute("message", "안녕 힘내셩~~ MVC기반의 데이터 보내기");
		// 이동할 뷰 페이지
		return "/views/message.jsp";
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher d = request.getRequestDispatcher(doProcess(request, response));
		d.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
	
	
}
