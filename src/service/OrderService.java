package service;

import java.util.List;

import bean.Order;

public interface OrderService {

	//���
	public int add(Order order);
	//ID����
	public List<Order> findByName(String name);
	//
	public List<Order> getAll();
}
