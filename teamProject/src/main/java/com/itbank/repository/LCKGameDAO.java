package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.itbank.model.LCKGameDTO;
@Repository
public interface LCKGameDAO {
	
	@Select("SELECT * FROM lckGame order by gameTime")
	List<LCKGameDTO> selectList();

	@Select("select gameTime from lckGame order by gameTime")
	List<LCKGameDTO> selectTimeList();

}
