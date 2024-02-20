package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.itbank.model.MemberDTO;

@Repository
public interface MemberDAO {

	@Select("select * from member order by id")
	List<MemberDTO> selectList();

	@Select("select * from member where id = #{id}")
	MemberDTO selectOne(int id);

	@Insert("insert into member (userid, userpw, username, email, gender) "
			+ "	values ( #{userid}, #{userpw}, #{username}, #{email}, #{gender} )")
	int insert(MemberDTO dto);

	@Select("select * from member where userid = #{userid} and userpw = #{userpw}")
	MemberDTO login(MemberDTO dto);

	@Delete("delete from member where id = #{id}")
	int delete(int id);

	@Update("update member "
			+ "	set"
			+ "		userpw = #{userpw},"
			+ "		username = #{username},"
			+ "		email = #{email},"
			+ "		gender = #{gender}"
			+ "	where"
			+ "		userid = #{userid} and id = #{id}")
	int update(MemberDTO dto);

	@Update("update member "
			+ "	set"
			+ "		userpw = #{userpw} "
			+ "	where"
			+ "		userid = #{userid} and email = #{email}")
	int updatePassword(MemberDTO dto);

}



