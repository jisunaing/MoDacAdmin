package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modacadmin.service.NoticeDto;
import com.modu.modacadmin.service.NoticeService;

@Repository
public class NoticeDao implements NoticeService{
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<NoticeDto> selectList(Map map) {
		return template.selectList("noticeList", map);
	}

	@Override
	public NoticeDto selectOne(Map map) {
		return template.selectOne("noticeOne", map);
	}

	@Override
	public int insert(NoticeDto dto) {
		return template.insert("noticeInsert", dto);
	}

	@Override
	public int delete(NoticeDto dto) {
		return template.delete("noticeDelete", dto);
	}

	@Override
	public int update(NoticeDto dto) {
		return template.update("noticeUpdate", dto);
	}

	@Override
	public int getTotalRecord(Map map) {
		return template.selectOne("noticeTotal", map);
	}

}
