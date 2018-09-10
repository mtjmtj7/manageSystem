package service;

import java.util.List;

import bean.Flower;
import bean.User;

public interface UserService {

	//登陆验证
	public User userLogin(User user);
	//注册
	public int userRegist(User user);
	//查询所有
	public List<Flower> getAll();
	//分类查询
	public List<Flower> search(String key,String other);
	//ID查询
	public Flower findById(int id);
}
