package controller;

import java.io.IOException; 

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;
import vo.Account;

public class JoinController implements Controller {
	@Override
	public void  execute (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		String path = "/loginsucc.jsp";

		// String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwdCheck = request.getParameter("pwd-check");
		// String name = request.getParameter("name");
		// String mail = request.getParameter("mail");
		// String phone = request.getParameter("phone");
		// String birth = request.getParameter("birth");

//		if (pwd.equals(pwdCheck)) {
//			path = "/main.jsp";
//			Service.getInstance().join(new Account(id, pwd, name, mail, phone, birth));
//		}

		if (pwd.equals(pwdCheck)) {
			path = "/main.jsp";
			Service.getInstance().join(new Account(
					request.getParameter("id"),
					pwd,
					request.getParameter("name"),
					request.getParameter("mail"),
					request.getParameter("phone"),
					request.getParameter("birth")
					));
		}
		HttpUtil.forward(request, response, path);
	}
	
}
