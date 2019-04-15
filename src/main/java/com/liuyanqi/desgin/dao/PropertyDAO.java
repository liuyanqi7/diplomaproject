package com.liuyanqi.desgin.dao;
 
import java.util.List;

import com.liuyanqi.desgin.pojo.Category;
import com.liuyanqi.desgin.pojo.Property;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PropertyDAO extends JpaRepository<Property,Integer>{
	Page<Property> findByCategory(Category category, Pageable pageable);
	List<Property> findByCategory(Category category);

}