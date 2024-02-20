package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.component.FileComponent;
import com.itbank.model.ReviewDTO;
import com.itbank.repository.ReviewDAO;
@Service
public class ReviewService {
	
	@Autowired private ReviewDAO dao;
	@Autowired private FileComponent fc;
	
	public List<ReviewDTO> getReviewList() {
		return dao.selectList();
	}

	public ReviewDTO getReview(int idx) {
		return dao.selectOne(idx);
	}

	public int write(ReviewDTO dto) {
		MultipartFile mf = dto.getUpload();
		dto.setImage(fc.upload(mf));
	      return dao.insert(dto);
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

}
