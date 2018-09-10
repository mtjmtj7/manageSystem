package bean;

import java.io.Serializable;


public class User implements Serializable{

	private int userId;
	private String userName;
	private String userPass;
	private String userTruename;
	private String userAddress;
	private String userSex;
	private String userPhone;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserTruename() {
		return userTruename;
	}
	public void setUserTruename(String userTruename) {
		this.userTruename = userTruename;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", userPass=" + userPass + ", userTruename=" + userTruename
				+ ", userAddress=" + userAddress + ", userSex=" + userSex
				+ ", userPhone=" + userPhone + "]";
	}
	
}
