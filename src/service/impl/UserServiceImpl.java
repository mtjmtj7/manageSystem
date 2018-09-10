package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.UserDao;
import bean.Flower;
import bean.User;
import service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public User userLogin(User user) {
		User uu = userDao.userLogin(user);
		if(uu!=null) {
			return uu;
		}
		return null;
	}

	@Override
	public int userRegist(User user) {
		return userDao.userRegist(user);
	}

	@Override
	public List<Flower> getAll() {
		List<Flower> list = userDao.getAll();
		return list;
	}

	@Override
	public List<Flower> search(String key, String other) {
		List<Flower> list = userDao.search(key,other);
		return list;
	}

	@Override
	public Flower findById(int id) {
		Flower fw = userDao.findById(id);
		return fw;
	}

}
