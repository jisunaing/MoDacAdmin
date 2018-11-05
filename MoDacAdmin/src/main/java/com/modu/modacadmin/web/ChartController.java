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
     System.out.println("차트에 들어옴");
      //병원이동시 차트를 위한 변수선언-박진성
      int mon=0,tue=0,wed=0,thu=0,fri=0,dat=0,sun=0;
      int ten=0,two=0,three=0,fors=0,five=0;
      
      int d00=0,d01=0,d02=0,d03=0,d04=0,d05=0,d06=0,d07=0,d08=0,d09=0,d10=0,d11=0,d12=0,d13=0,d14=0,d15=0,d16=0,d17=0,d18=0,d19=0,d20=0,d21=0,d22=0,d23=0;
            
      
      
      //병원수, 약국수, 일반사용자 수,제휴병원 수 얻어오기
      List<Map> list = backendService.mainChartTableRecord();
      model.addAttribute("list", list);
      
      List<Map> listresult = backendService.reservationReception();
//      System.out.println(listresult);
      model.addAttribute("reservation",listresult.get(0));
      

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
      List<String> day = backendService.mainChartday();
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
//            System.out.println("불러올 차트가 없어요");
         }
         //병원 차트를 가져오기 위한 부분
         //병원 차트 요일별 저장하기
//         System.out.println("mon : "+mon);
         model.addAttribute("mon", mon);
         model.addAttribute("tue", tue);
         model.addAttribute("wed", wed);
         model.addAttribute("thu", thu);
         model.addAttribute("fri", fri);
         model.addAttribute("dat", dat);
         model.addAttribute("sun", sun);
      //예약 요일별 현환 차트 끝
         
//        System.out.println(day);
      //시간대별 차트 시작
      if(day!=null) {
          for(int i=0;i<day.size();i++) {
            calday.setTime(dateFormatday.parse(day.get(i).toString()));
//            System.out.println(calday.get(Calendar.HOUR_OF_DAY));
             switch (calday.get(Calendar.HOUR_OF_DAY)) {
              case 0:   d00++;   break;
              case 1:   d01++;   break;
              case 2:   d02++;   break;
              case 3:   d03++;   break;
              case 4:   d04++;   break;
              case 5:   d05++;   break;
              case 6:   d06++;   break;
              case 7:   d07++;   break;
              case 8:   d08++;   break;
              case 9:   d09++;   break;
              case 10:  d10++;   break;
              case 11:  d11++;   break;
              case 12:  d12++;   break;
              case 13:  d13++;   break;
              case 14:  d14++;   break;
              case 15:  d15++;   break;
              case 16:  d16++;   break;
              case 17:  d17++;   break;
              case 18:  d18++;   break;
              case 19:  d19++;   break;
              case 20:  d20++;   break;
              case 21:  d21++;   break;
              case 22:  d22++;   break;
              case 23:  d23++;   break;
              default : d23++;
              
              }//switch
           }//for
//          System.out.println("성공");
        }//if
        else {
           model.addAttribute("chartError", "불러올 차트가 없어요");
//           System.out.println("불러올 차트가 없어요");
           
        }
        model.addAttribute("d00", d00);
        model.addAttribute("d01", d01);
        model.addAttribute("d02", d02);
        model.addAttribute("d03", d03);
        model.addAttribute("d04", d04);
        model.addAttribute("d05", d05);
        model.addAttribute("d06", d06);
        model.addAttribute("d07", d07);
        model.addAttribute("d08", d08);
        model.addAttribute("d09", d09);
        model.addAttribute("d10", d10);
        model.addAttribute("d11", d11);
        model.addAttribute("d12", d12);
        model.addAttribute("d13", d13);
        model.addAttribute("d14", d14);
        model.addAttribute("d15", d15);
        model.addAttribute("d16", d16);
        model.addAttribute("d17", d17);
        model.addAttribute("d18", d18);
        model.addAttribute("d19", d19);
        model.addAttribute("d20", d20);
        model.addAttribute("d21", d21);
        model.addAttribute("d22", d22);
        model.addAttribute("d23", d23);
      //시간대별 차트 끝
         
         
       
//         System.out.println("메인 이동");
      return "Main";
   }
   
}