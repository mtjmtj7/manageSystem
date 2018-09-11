package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.AdminDao;
import bean.Admin;
import bean.Flower;
import bean.User;
import service.AdminService;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao ad;
	@Override
	public Admin adminLogin(Admin admin) {
		return ad.adminLogin(admin);
	}
	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return ad.getAll();
	}
	@Override
	public User findById(int id) {
		return ad.findById(id);
	}
	@Override
	public int update(User user) {
		return ad.update(user);
	}
	@Override
	public int delete(int id) {
		return ad.delete(id);
	}
	@Override
	public int updateFlower(Flower fw) {
		return ad.updateFlower(fw);
	}
	@Override
	public int addOneFlower(Flower fw) {
		return ad.addOneFlower(fw);
	}
	@Override
	public int deleteFlower(int id) {
		return ad.deleteFlower(id);
	}

}
