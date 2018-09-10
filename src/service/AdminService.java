package service;

import java.util.List;

import bean.Admin;
import bean.User;

public interface AdminService {

	//µÇÂ½
	public Admin adminLogin(Admin admin);
	//²éÑ¯ËùÓĞ
	public List<User> getAll();
	public User findById(int id);
}
