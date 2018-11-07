package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.ChartService;
import com.modu.modacadmin.service.PqnaDto;
import com.modu.modacadmin.service.PqnaService;
import com.modu.modacadmin.service.QnaDto;
import com.modu.modacadmin.service.QnaService;

@Repository
public class QnaServiceDao implements QnaService {
   
   @Resource(name="template")
   private SqlSessionTemplate template;

@Override
public List<QnaDto> selectList(Map map) {
	
	return template.selectList("QnaList", map);
}

@Override
public int getTotalRecord(Map map) {
	
	return template.selectOne("QnaRecord",map);
}

@Override
public QnaDto selectOne(Map map) {
	
	return template.selectOne("QnaSelectOne",map);
}

@Override
public int delete(Map map) {
	
	return template.delete("QnaDelete",map);
}

   
   
   
}