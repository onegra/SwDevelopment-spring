package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.itbank.model.LCKGameDTO;
@Repository
public interface LCKGameDAO {
	
	@Select("select * from lckgame order by idx")
	List<LCKGameDTO> selectList();

}
