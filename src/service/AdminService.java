package service;

import java.util.List;

import bean.Admin;
import bean.Flower;
import bean.User;

public interface AdminService {

	//��½
	public Admin adminLogin(Admin admin);
	//��ѯ����
	public List<User> getAll();
	public User findById(int id);
	public int update(User user);
	public int delete(int id);
	public int updateFlower(Flower fw);
	public int addOneFlower(Flower fw);
	public int deleteFlower(int id);
}
