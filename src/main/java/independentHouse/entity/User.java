package independentHouse.entity;


public class User {
	public String id;
	public String pass;
	public String addr;
	public User(String id, String pass, String addr) {
		super();
		this.id = id;
		this.pass = pass;
		this.addr = addr;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
}
