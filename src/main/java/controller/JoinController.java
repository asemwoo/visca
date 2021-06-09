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
	Account account = new Account(id,pwd);
	
	Service s = Service.getInstance();//���ΰ�ü
	s.join(account);//���θ޼ҵ� ȣ��
	
	HttpUtil.forward(request, response, "/index.jsp");
	}
	
}
