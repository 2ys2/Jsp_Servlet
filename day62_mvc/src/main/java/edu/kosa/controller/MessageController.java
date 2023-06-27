package edu.kosa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*@WebServlet("/message")*/
public class MessageController extends HttpServlet {

	//1. 전송방식 결정
	//2. 사용자 요청 분석 (doGet / doPost)

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String msg = request.getParameter("message");
		String deabo = "우리 모두 대보 갑니다.";
		Object result = null;

		if( msg == null || msg.equals("test")) {
			result="메세지가 없거나, test로 넘어왔습니다.";
		} else if (msg.equals("name")) {
			result = "나의 이름은 kingamile입니다.";
		} else if (msg.equals("aa")){
			result = "나의 이름은 aa 입니다.";
		} else {
			result = "찾는 type이 없군요.";
		} //if end


		//3. 데이터 저장 - request.setAttribute("변수", 값 또는 변수(데이터));
		request.setAttribute("result", result);
		request.setAttribute("str", deabo);
		request.setAttribute("message", "반가워요!");

		//4. 이동할 뷰 페이지 지정
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/MessageView.jsp");//view page
		dispatcher.forward(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
