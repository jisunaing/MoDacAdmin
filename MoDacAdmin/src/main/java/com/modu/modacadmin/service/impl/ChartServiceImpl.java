package com.modu.modacadmin.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.modu.modacadmin.service.ChartService;

@Service("chartService")
public class ChartServiceImpl implements ChartService {

   @Resource(name="chartServiceDao")
   private ChartServiceDao dao;
   
   @Override
   public List<Map> mainChartTableRecord() {
      return dao.mainChartTableRecord();
   }

   @Override
   public List<String> mainChartAge() {
      return dao.mainChartAge();
   }

   @Override
   public List<String> mainChartday() {
      return dao.mainChartday();
   }

   @Override
   public List<Map> reservationReception() {
      return dao.reservationReception();
   }

}