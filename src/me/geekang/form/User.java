package me.geekang.form;

public class User {
	
	private String userName;
	private String password;
	
	public User(){}
	
	public User(User user){
		//this.userName = user.userName;
		//this.password = user.password;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
}
