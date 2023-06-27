package kr.or.kosa.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.kosa.action.Action;
import kr.or.kosa.action.ActionForward;
import kr.or.kosa.dao.RegisterDao;

public class LoginOkServiceAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
      ActionForward ret = new ActionForward();

      int id = Integer.parseInt(request.getParameter("id"));
      String pwd = request.getParameter("pwd");
      System.out.println("id : " + id);

      RegisterDao dao = new RegisterDao();
      boolean isLogin = dao.loginCheck(id, pwd) > 0;

      if (isLogin) {
         HttpSession session = request.getSession();
         session.setAttribute("id", id);
      }

      ret.setRedirect(false);
      ret.setPath("/WEB-INF/views/main/main.jsp");
      return ret;
   }

}