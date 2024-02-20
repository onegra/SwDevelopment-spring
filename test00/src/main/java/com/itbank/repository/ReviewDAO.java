package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.itbank.model.ReviewDTO;
@Repository
public interface ReviewDAO {
	
	@Select("select * from review order by idx")
	List<ReviewDTO> selectList();

	@Select("select * from review where idx = #{idx}")
	ReviewDTO selectOne(int idx);

	@Insert("insert into review (title, writer, content, image)"
			+ " values (#{title}, #{writer}, #{content}, #{image})")
	int insert(ReviewDTO dto);

	@Delete("delete from review where idx = #{idx}")
	int delete(int idx);

}
