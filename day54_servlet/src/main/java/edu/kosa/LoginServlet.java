package edu.kosa;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login") //2. annotation 등록 방법(자동으로 설정)

public class LoginServlet extends HttpServlet {
	
	//DB 대체
	public String user = "kingsmile";
	public String pass = "1004";
	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("login call~~");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("pwd");
		
		//System.out.println(id + ", " + passwd);
		response.setCharacterEncoding("euc-kr");
		PrintWriter pw = response.getWriter();
		pw.write("<html><head><title>Login Result</title></head><body><b><br>");
		
		if( user.equals(id) && !passwd.equals(pass) ) {
			pw.write("암호가 틀렸습니다.<br />");
			pw.println("<a href='html/loginForm.html'>Login</a>");
		} else if( user.equals(id) && passwd.equals(pass) ) {
			pw.write("반갑습니다. 어서와~~~<br />");
			pw.write("너의 아이디는 " + id + "이군요<br />");
			pw.write("너의 비밀번호는 " + passwd + "이군요<br />");
		} else {
			pw.write("등록되지 않은 사용자입니다. 회원 가입 요망<br />");
			pw.println("<a href='html/loginForm.html'>Login</a>");
			//pw.println("javascripthistory.back()");
		}
		pw.println("</b></body></html>");
		pw.close();
		 //pw.write("<html><head><title>Hello Servlet</title></head><body><h1>Hello Servlet Test</h1></body></html>");
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	

}
