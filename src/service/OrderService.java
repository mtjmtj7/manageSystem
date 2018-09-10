package service;

import java.util.List;

import bean.Order;

public interface OrderService {

	//Ìí¼Ó
	public int add(Order order);
	//ID²éÕÒ
	public List<Order> findByName(String name);
}
