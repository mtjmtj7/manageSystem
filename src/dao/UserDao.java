package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bean.Flower;
import bean.User;

public interface UserDao {

	//登陆验证
	public User userLogin(User user);
	//注册
	public int userRegist(User user);
	//查询所哟
	public List<Flower> getAll();
	//分类查询
	public List<Flower> search(@Param("key") String key,@Param("fw") String other);
	//按ID查询
	public Flower findById(int id);
}
