package service;

import java.util.List;

import bean.Order;

public interface OrderService {

	//ÃÌº”
	public int add(Order order);
	//ID≤È’“
	public List<Order> findByName(String name);
	//
	public List<Order> getAll();
}
