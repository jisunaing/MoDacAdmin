package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.modu.modacadmin.service.PqnaDto;
import com.modu.modacadmin.service.PqnaService;


@Repository
public class PqnaDao implements PqnaService {
   
   @Resource(name="template")
   private SqlSessionTemplate template;

@Override
public List<PqnaDto> selectList(Map map) {
	
	return template.selectList("PQnaList", map);
}

@Override
public int getTotalRecord(Map map) {
	
	return template.selectOne("PQnaRecord",map);
}

@Override
public PqnaDto selectOne(Map map) {
	
	return template.selectOne("PQnaSelectOne",map);
}

@Override
public int delete(Map map) {
	
	return template.delete("PQnaDelete",map);
}

   
   
   
}