package com.itbank.service;


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
		return list;
	}

	public LCKMVPDTO selectMVP(int idx) {
		return dao.selectMVP(idx);
	}

	public int MVPChoice(LCKMVPDTO dto) {
		return dao.MVPChoice(dto);
	}

	public LCKMVPDTO MVPChoiceCheck(LCKMVPDTO dto) {
		return dao.MVPChoiceCheck(dto);
	}

	public int MVPUpdate(LCKMVPDTO dto) {
		// TODO Auto-generated method stub
		return dao.MVPUpdate(dto);
	}
	

	
}
