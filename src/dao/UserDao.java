package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import bean.Flower;
import bean.User;

public interface UserDao {

	//��½��֤
	public User userLogin(User user);
	//ע��
	public int userRegist(User user);
	//��ѯ��Ӵ
	public List<Flower> getAll();
	//�����ѯ
	public List<Flower> search(@Param("key") String key,@Param("fw") String other);
	//��ID��ѯ
	public Flower findById(int id);
}
