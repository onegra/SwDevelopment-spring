package com.itbank.repository;

import java.util.List;

import com.itbank.model.SurveyDTO;


public interface SurveyDAO {

	List<SurveyDTO> selectList();

	int insert(SurveyDTO dto);

	SurveyDTO selectOne(int idx);

	SurveyDTO selectResult(int idx);

	

}
















