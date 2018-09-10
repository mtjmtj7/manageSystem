package dao;

import java.util.List;

import bean.Admin;
import bean.User;

public interface AdminDao {

	//µÇÂ½
	public Admin adminLogin(Admin admin);
	public List<User> getAll();
	public User findById(int id);
}
