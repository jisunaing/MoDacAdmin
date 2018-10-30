package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.HInfoCategDto;
import com.modu.modacadmin.service.HInfoCategService;
import com.modu.modacadmin.service.HInfoDto;
import com.modu.modacadmin.service.HInfoService;
import com.modu.modacadmin.service.NoticeDto;
import com.modu.modacadmin.service.NoticeService;

@Repository("hInfoDao")
public class HInfoDao implements HInfoService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<HInfoDto> selectList(Map map) {
		System.out.println("categno_dao: "+map.get("categno"));
		return template.selectList("hinfoList", map);
	}

	@Override
	public HInfoDto selectOne(Map map) {
		return template.selectOne("hinfoOne", map);
	}
	
	@Override
	public int insert(HInfoDto dto) {
		return template.insert("hinfoInsert", dto);
	}

  	@Override
	public int delete(HInfoDto dto) {
		return template.delete("hinfoDelete", dto);
	}

	@Override
	public int update(HInfoDto dto) {
		return template.update("hinfoUpdate", dto);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("hinfoTotal", map);
	}

}
