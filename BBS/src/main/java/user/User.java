package user;

public class User {
	private String userID;
	private String userPassword;
	private String userName;
	private String userGender;
	private String userEmail;
	
	/* 멤버변수, 클래스 필드 */
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	/*
	 * @Override public String toString() { return "User [userID=" + userID +
	 * ", userPassword=" + userPassword + ", userName=" + userName + ", userGender="
	 * + userGender + ", userEmail=" + userEmail + "]"; }
	 */

}
