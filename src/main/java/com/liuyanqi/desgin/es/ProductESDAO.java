package com.liuyanqi.desgin.es;

import com.liuyanqi.desgin.pojo.Product;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

public interface ProductESDAO extends ElasticsearchRepository<Product,Integer>{

}
