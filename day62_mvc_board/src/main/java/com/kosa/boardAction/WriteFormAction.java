package com.kosa.boardAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteFormAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request,
			HttpServletResponse response)
					throws Exception {

		int num=0, ref=1, re_step=0, re_level=0;
		try {
			if( request.getParameter("num") != null ) {
				num = Integer.parseInt(request.getParameter("num"));
				ref = Integer.parseInt(request.getParameter("ref"));
				re_step = Integer.parseInt(request.getParameter("re_step"));
				re_level = Integer.parseInt(request.getParameter("re_level"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//저장
		request.setAttribute("num", num);
		request.setAttribute("ref", ref);
		request.setAttribute("re_step", re_step);
		request.setAttribute("re_level", re_level);
		
		return "/board/writeForm.jsp";
	}
}



/* controller -> (web.xml에 작성한 *.do 로 인해서) Action -> return ~Pro.jsp */