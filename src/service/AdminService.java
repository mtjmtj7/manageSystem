package service;

import java.util.List;

import bean.Admin;
import bean.User;

public interface AdminService {

	//��½
	public Admin adminLogin(Admin admin);
	//��ѯ����
	public List<User> getAll();
	public User findById(int id);
}
