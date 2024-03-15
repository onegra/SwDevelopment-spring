package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.itbank.model.LCKGameDTO;
import com.itbank.model.LCKMVPDTO;
@Repository
public interface LCKGameDAO {
	
	@Select("SELECT * FROM lckGame order by gameTime")
	List<LCKGameDTO> selectList();

	@Select("select gameTime from lckGame order by gameTime")
	List<LCKGameDTO> selectTimeList();

	@Select("SELECT lg.idx, \r\n" + 
			"       lg.gameTime,\r\n" + 
			"       lg.redTeam, lg.blueTeam,\r\n" + 
			"       rt.top AS redTop, rt.jungle AS redJungle, rt.mid AS redMid, rt.adCarry AS redAdCarry, rt.supporter AS redSupporter,\r\n" + 
			"       bt.top AS blueTop, bt.jungle AS blueJungle, bt.mid AS blueMid, bt.adCarry AS blueAdCarry, bt.supporter AS blueSupporter\r\n" + 
			"FROM lckGame lg\r\n" + 
			"JOIN lckTeamInfo rt ON lg.redTeam = rt.teamName\r\n" + 
			"JOIN lckTeamInfo bt ON lg.blueTeam = bt.teamName\r\n" + 
			"WHERE lg.idx = #{idx}")
	LCKMVPDTO selectOne(int idx);

}
