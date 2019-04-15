package com.liuyanqi.desgin.dao;
 

import java.util.List;

import com.liuyanqi.desgin.pojo.Product;
import com.liuyanqi.desgin.pojo.Property;
import com.liuyanqi.desgin.pojo.PropertyValue;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PropertyValueDAO extends JpaRepository<PropertyValue,Integer>{

	List<PropertyValue> findByProductOrderByIdDesc(Product product);
	PropertyValue getByPropertyAndProduct(Property property, Product product);

	
	
	
}