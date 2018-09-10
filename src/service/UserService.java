package service;

import java.util.List;

import bean.Flower;
import bean.User;

public interface UserService {

	//��½��֤
	public User userLogin(User user);
	//ע��
	public int userRegist(User user);
	//��ѯ����
	public List<Flower> getAll();
	//�����ѯ
	public List<Flower> search(String key,String other);
	//ID��ѯ
	public Flower findById(int id);
}
