package com.itbank.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.LCKGameDTO;
import com.itbank.model.LCKMVPDTO;
import com.itbank.repository.LCKGameDAO;

@Service
public class GameService {
	@Autowired private LCKGameDAO dao;

	public List<LCKGameDTO> getlist() {
		List<LCKGameDTO> list = dao.selectList();
		for(LCKGameDTO dto : list) {
			String date = "";
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			date = sdf.format(dto.getGameTime());
			dto.setFormatTime(date);
		}
		return list;
	}

	public LCKMVPDTO selectOne(int idx) {
		// TODO Auto-generated method stub
		return dao.selectOne(idx);
	}

	

	
}
