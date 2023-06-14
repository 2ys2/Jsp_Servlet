package edu.kosa;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/info")
public class information extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("=======Servlet Start=========");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("EUC-KR");
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		PrintWriter out = response.getWriter();
		out.write("<html><head><title>Information</title></head><body><b>");
		
		out.write(name+"님의 ");
		out.write("연락처는 "+phone+"이고, ");
		out.write("주소는 "+address+"입니다.");
		System.out.println(name + ", " + phone + ", " + address);
		
		out.println("<a href='jsp/info.jsp'> info input window </a>");
		out.println("</b></body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
