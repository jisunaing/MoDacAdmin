package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.NoticeDto;
import com.modu.modacadmin.service.NoticeService;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	@Resource(name="noticeDao")
	private NoticeDao dao;
	
	@Override
	public List<NoticeDto> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public NoticeDto selectOne(Map map) {
		return dao.selectOne(map);
	}

	@Override
	public int insert(NoticeDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int delete(NoticeDto dto) {
		return dao.delete(dto);
	}

	@Override
	public int update(NoticeDto dto) {
		return dao.update(dto);
	}

	@Override
	public int getTotalRecord(Map map) {
		return dao.getTotalRecord(map);
	}

}
