package dao;

import java.util.List;

import bean.Order;

public interface OrderDao {

	//��������
	public int add(Order order);
	//ID����
	public List<Order> findByName(String name);
	public List<Order> getAll();
}
