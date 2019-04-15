package com.liuyanqi.desgin.dao;
 
import java.util.List;

import com.liuyanqi.desgin.pojo.Product;
import com.liuyanqi.desgin.pojo.ProductImage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductImageDAO extends JpaRepository<ProductImage,Integer>{
	public List<ProductImage> findByProductAndTypeOrderByIdDesc(Product product, String type);
	
}
