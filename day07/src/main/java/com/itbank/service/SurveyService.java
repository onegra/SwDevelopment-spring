package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.component.FileComponent;
import com.itbank.model.SurveyDTO;
import com.itbank.repository.SurveyDAO;

@Service
public class SurveyService {
	
	@Autowired private SurveyDAO dao;
	@Autowired private FileComponent fileComponent;

	public int add(SurveyDTO dto) {		
		String image1 = fileComponent.upload(dto.getUpload1());
		String image2 = fileComponent.upload(dto.getUpload2());
		dto.setImage1(image1);
		dto.setImage2(image2);
		return dao.insert(dto);
	}

	public List<SurveyDTO> getList() {
		return dao.selectList();
	}

	public SurveyDTO getSurvey(int idx) {
		return dao.selectOne(idx);
	}

	public SurveyDTO getResult(int idx) {
		// TODO Auto-generated method stub
		return null;
	}

}
