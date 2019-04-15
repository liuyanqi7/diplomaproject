package com.liuyanqi.desgin.dao;
 
import java.util.List;

import com.liuyanqi.desgin.pojo.Product;
import com.liuyanqi.desgin.pojo.Review;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewDAO extends JpaRepository<Review,Integer>{

	List<Review> findByProductOrderByIdDesc(Product product);
	int countByProduct(Product product);

}
