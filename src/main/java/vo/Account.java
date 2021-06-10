package vo;

public class Account {
	private String id;
	private String pwd;
	private String name;
	private String mail;
	private String phone;
	private String birth;
	private int money;
	public Account () {}
	public Account(String tId, String tPwd,String tName,String tMail,String tPhone, String tBirth)
	{
		this.id=tId;
		this.pwd= tPwd;
		this.name=tName;
		this.mail=tMail;
		this.phone=tPhone;
		this.birth=tBirth;
	}
	public String getId()
	{
		return id;
	}
	public void setId(String tId)
	{
		this.id= tId;
	}
	public String getPwd()
	{
		return pwd;
	}
	public void setPwd(String tPwd)
	{
		this.pwd= tPwd;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String tName)
	{
		this.name= tName;
	}
	public String getMail()
	{
		return mail;
	}
	public void setMail(String tMail)
	{
		this.mail= tMail;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPhone(String tPhone)
	{
		this.phone= tPhone;
	}
	public String getBirth()
	{
		return birth;
	}
	public void setBirth(String tBirth)
	{
		this.birth= tBirth;
	}
	public	int getMoney()
	{
		return money;
	}
	public void setMoney(int tMoney)
	{
		this.money= tMoney;
	}
}
