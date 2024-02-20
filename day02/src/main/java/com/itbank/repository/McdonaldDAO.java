package com.itbank.repository;

import java.util.List;

public class McdonaldDAO {
	
	@Select("<script>"
			+ "select * from mcdonald"
			+ " <if test=\"category != null\">"
			+ "		where category = #{category}"
			+ "</if>"
			+ "order by idx"
			+ "</script>")
	List<McdonaldDTO> selectList(String category);
	
	@Select("selext * from mcdonald where dix = #{idx}")
	McdonaldDTO selectOne(int idx);
}
