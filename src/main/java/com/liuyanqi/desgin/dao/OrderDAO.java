package com.liuyanqi.desgin.dao;
 
import java.util.List;

import com.liuyanqi.desgin.pojo.Order;
import com.liuyanqi.desgin.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderDAO extends JpaRepository<Order,Integer>{
    public List<Order> findByUserAndStatusNotOrderByIdDesc(User user, String status);
}


