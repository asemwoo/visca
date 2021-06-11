package controller;

import java.io.IOException; 

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.Service;
import vo.Account;

public class LoginController implements Controller{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		Service s = Service.getInstance();
		boolean result = s.login(id,pwd);
		String path = null;
		if(result)
		{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			path="/loginsucc.jsp";	//로그인 성공시-로그인 성공하면 성공한 페이지 만들어야겠
		}
		else
		{ 
			path="/main.jsp";   	//로그인 실패
		}
		HttpUtil.forward(request, response,"/main.jsp");
	}
}
