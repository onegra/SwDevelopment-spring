package com.itbank.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.MemberDTO;
import com.itbank.repository.MemberDAO;

@Service
public class MemberService {

	@Autowired private MemberDAO dao;
	
	public List<MemberDTO> getMemberList() {
		List<MemberDTO> list = dao.selectList();
		list.forEach(dto -> dto.setUserpw("********"));
		return list;
	}

	public MemberDTO getMember(int idx) {
		return dao.selectOne(idx);
	}

	public int delete(int idx) {
		return dao.delete(idx);
	}

	public int add(MemberDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int modify(MemberDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	public String resetPass(MemberDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	public MemberDTO login(MemberDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	

}









