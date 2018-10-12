package com.modu.modacadmin.web;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.modu.modacadmin.service.ChartService;

@Controller
public class ChartController {
   @Resource(name="chartService")
   private ChartService backendService;
   
   @RequestMapping("main.do")
   public String mainMove(Model model)throws Exception{
      //병원이동시 차트를 위한 변수선언-박진성
      int mon=0,tue=0,wed=0,thu=0,fri=0,dat=0,sun=0;
      int ten=0,two=0,three=0,fors=0,five=0;
      
      List<Map> list = backendService.mainChartTableRecord();
      model.addAttribute("list", list);
      /*
      model.addAttribute("a", list.get(0));
      model.addAttribute("b", list.get(1));
      model.addAttribute("c", list.get(2));
      model.addAttribute("d", list.get(3));
      */

      //나이대별 나누는 차트
      List<String> age = backendService.mainChartAge();
      
      SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
      Calendar cal = Calendar.getInstance();

      int year = Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()));
         if(age!=null) {
            for(int i=0;i<age.size();i++) {
               cal.setTime(dateFormat.parse(age.get(i).toString()));
               switch ((year-cal.get(Calendar.YEAR))/10) {
               case 0:
               case 1: ten++; break;
               case 2: two++; break;
               case 3: three++;break;
               case 4: fors++;break;
               case 5: 
               case 6:
               case 7:
               case 8:
               case 9 : five++;break;
               default:
                  break;
               }
            }//for
      }//if
         
      model.addAttribute("ten", ten);
      model.addAttribute("two", two);
      model.addAttribute("three", three);
      model.addAttribute("fors", fors);
      model.addAttribute("five", five);
      //나이대별 누나는 차트 끝
      //예약 요일별 현황 차트 시작
      SimpleDateFormat dateFormatday = new SimpleDateFormat("yyyy-MM-dd HH:mm");
      Calendar calday = Calendar.getInstance();
      List<String> day;
         day =backendService.mainChartday();
         if(day!=null) {
            for(int i=0;i<day.size();i++) {
              calday.setTime(dateFormatday.parse(day.get(i).toString()));
               switch (calday.get(Calendar.DAY_OF_WEEK)) {
               case 1:   sun++;   break;
               case 2:   mon++;   break;
               case 3:   tue++;   break;
               case 4:   wed++;   break;
               case 5:   thu++;   break;
               case 6:   fri++;   break;
               case 7:   dat++;   break;
               }//switch
            }//for
         }//if
         else {
            model.addAttribute("chartError", "불러올 차트가 없어요");
         }
         //병원 차트를 가져오기 위한 부분
         //병원 차트 요일별 저장하기
         model.addAttribute("mon", mon);
         model.addAttribute("tue", tue);
         model.addAttribute("wed", wed);
         model.addAttribute("thu", thu);
         model.addAttribute("fri", fri);
         model.addAttribute("dat", dat);
         model.addAttribute("sun", sun);
      //예약 요일별 현환 차트 끝

         
      return "Main";
   }
   
}