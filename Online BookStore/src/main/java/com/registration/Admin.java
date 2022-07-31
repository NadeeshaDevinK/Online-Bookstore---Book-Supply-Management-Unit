package com.registration;

public class Admin {
	
	private int user_id;
	private String Username;
	private String Useremail;
	private String Userpassword;
	private String Usercontactno;
	
	public Admin(int user_id, String username, String useremail, String Userpassword, String usercontactno) {
		this.user_id = user_id;
		this.Username = username;
		this.Useremail = useremail;
		this.Userpassword = Userpassword;
		this.Usercontactno = usercontactno;
	}

	public int getUser_id() {
		return user_id;
	}
	public String getUsername() {
		return Username;
	}
	public String getUseremail() {
		return Useremail;
	}
	public String getUserpassword() {
		return Userpassword;
	}
	public String getUsercontactno() {
		return Usercontactno;
	}
}
