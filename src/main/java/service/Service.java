package service;

import dao.Dao;
import vo.Account;
 
public class Service {
	private static Service service = new Service();
	private Service() {}  //외부접근
	private Dao dao = Dao.getInstance(); //내부객체
	public static Service getInstance() //내부객체가 반환되게하는 메소드
	{
		return service;
	} 
	public void join(Account account) {
		dao.join(account);
	}
	public boolean login(String id, String pwd) {
		// TODO Auto-generated method stub
		return dao.login(id,pwd);
	}
	public int deposit(String id, int money) { 
		return dao.deposit(id, money);
	}
	public int withdrawal(String id, int money) { 
		return dao.withdrawal(id, money);
	}
	public int query(String id) { 
		return dao.query(id);
	}
	public boolean search(String id) {  
		return dao.search(id);
	}
	public int transfer(String id, String rId, int money) { 
		return dao.transfer(id, rId, money);
	}
}

