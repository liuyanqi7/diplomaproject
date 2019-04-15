package com.liuyanqi.desgin.dao;

import java.util.List;

import com.liuyanqi.desgin.pojo.Order;
import com.liuyanqi.desgin.pojo.OrderItem;
import com.liuyanqi.desgin.pojo.Product;
import com.liuyanqi.desgin.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderItemDAO extends JpaRepository<OrderItem,Integer>{
	List<OrderItem> findByOrderOrderByIdDesc(Order order);
	List<OrderItem> findByProduct(Product product);
	List<OrderItem> findByUserAndOrderIsNull(User user);
}
