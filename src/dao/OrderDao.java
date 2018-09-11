package dao;

import java.util.List;

import bean.Order;

public interface OrderDao {

	//新增订单
	public int add(Order order);
	//ID查找
	public List<Order> findByName(String name);
	public List<Order> getAll();
}
