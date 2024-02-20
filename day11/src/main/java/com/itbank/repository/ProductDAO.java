package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.itbank.model.ProductDTO;

@Repository
public interface ProductDAO {
	
	@Select("select * from product order by idx")
	List<ProductDTO> selectList();

	@Select("select * from product where idx = #{idx}")
	ProductDTO selectOne(int idx);

	@Insert("insert into product (name, img, price, amount)" 
			+ " values (#{name}, #{img}, #{price}, #{amount} )")
	int insert(ProductDTO dto);
	
	@Delete("delete from product where idx = #{idx}")
	int delete(int idx);

}
