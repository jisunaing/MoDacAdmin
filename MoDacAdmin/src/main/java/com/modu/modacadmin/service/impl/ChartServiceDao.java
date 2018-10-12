package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.ChartService;

@Repository
public class ChartServiceDao implements ChartService {
	
	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<Map> mainChartTableRecord() {
		return template.selectList("mainChartTableRecord");
	}

	@Override
	public List<String> mainChartAge() {
		return template.selectList("mainChartAge");
	}

	@Override
	public List<String> mainChartday() {
		return template.selectList("mainChartday");
	}
	
	
}
