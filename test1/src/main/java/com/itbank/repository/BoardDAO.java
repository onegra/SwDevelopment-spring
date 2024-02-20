package com.itbank.repository;

import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BoardDAO {
	@Select("select * from board2 order by idx desc fetch next 10 rows only")
	List<BoardDTO> selectList();
}
