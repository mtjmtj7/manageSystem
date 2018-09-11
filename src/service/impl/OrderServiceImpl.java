package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.OrderDao;
import bean.Order;
import service.OrderService;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderDao;
	@Override
	public int add(Order order) {
		int res = orderDao.add(order);
		return res;
	}
	@Override
	public List<Order> findByName(String name) {
		List<Order> od = orderDao.findByName(name);
		if(od!=null)
			return od;
		return null;
	}
	@Override
	public List<Order> getAll() {
		return orderDao.getAll();
	}

}
