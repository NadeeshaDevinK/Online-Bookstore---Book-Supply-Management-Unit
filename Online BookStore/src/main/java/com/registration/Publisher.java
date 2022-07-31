package com.registration;

public class Publisher {
	
	private int user_id;
	private String Publishername;
	private String Publisheraddress;
	private String Publishercompany;
	private String Publisheremail;
	private String Publisherpassword;
	private String Publishercontactno;
	
	public Publisher(int user_id, String publishername, String publisheraddress, String publishercompany,
			String publisheremail, String publisherpassword, String publishercontactno) {
		this.user_id = user_id;
		this.Publishername = publishername;
		this.Publisheraddress = publisheraddress;
		this.Publishercompany = publishercompany;
		this.Publisheremail = publisheremail;
		this.Publisherpassword = publisherpassword;
		this.Publishercontactno = publishercontactno;
	}

	public int getUser_id() {
		return user_id;
	}

	public String getPublishername() {
		return Publishername;
	}

	public String getPublisheraddress() {
		return Publisheraddress;
	}

	public String getPublishercompany() {
		return Publishercompany;
	}

	public String getPublisheremail() {
		return Publisheremail;
	}

	public String getPublisherpassword() {
		return Publisherpassword;
	}

	public String getPublishercontactno() {
		return Publishercontactno;
	}

}
