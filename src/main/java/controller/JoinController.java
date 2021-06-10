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
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String birth = request.getParameter("birth");

	Account account = new Account(id,pwd,name,mail,phone,birth);
	
	Service s = Service.getInstance();
	s.join(account);
	
	HttpUtil.forward(request, response, "/main.jsp");
	}
	
}
