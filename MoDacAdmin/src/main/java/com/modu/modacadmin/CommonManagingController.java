package com.modu.modacadmin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CommonManagingController {
	
	// [병원 목록 페이지로 이동]
	@RequestMapping("CommonHospital.do")
	public String listHospital() throws Exception {
		System.out.println("병원 목록 페이지");
		return "backend/pharmnhospital/HospitalList.tiles";
	}
	
	// [병원 등록 페이지 이동]
	@RequestMapping("HospitalRegister.do")
	public String moveRegistHospital() throws Exception {
		System.out.println("병원 등록 페이지");
		return "backend/pharmnhospital/HospitalRegister.tiles";
	}
	
	// [병원 등록 처리]
	@RequestMapping("HospitalRegistComplete.do")
	public String hospitalRegistComplete(@RequestParam Map map, HttpServletRequest req) throws Exception {
		
		System.out.println("name:"+map.get("name"));
		System.out.println("contact:"+map.get("contact"));
		System.out.println("addr:"+map.get("addr"));
		System.out.println("monopen:"+map.get("monopen"));
		System.out.println("monclose:"+map.get("monclose"));
		System.out.println("holiopen:"+map.get("holiopen"));
		System.out.println("holiclose:"+map.get("holiclose"));
		String[] subjects = req.getParameterValues("subject");
		for(String subject : subjects) {
			System.out.println("subject:"+subject);
		}
		// map.put("subjects") 해야 함
			
		return "backend/pharmnhospital/HospitalList.tiles";
	}
	
	// [병원 상세보기]
	@RequestMapping("HospitalView.do")
	public String viewHospital(@RequestParam Map map) throws Exception {

		System.out.println("병원 상세보기 no:"+map.get("no"));
		
		return "backend/pharmnhospital/HospitalView.tiles";
	}
	
	// [병원 수정 페이지 이동 ]
	@RequestMapping("HospitalEdit.do")
	public String moveEditHospital(@RequestParam Map map) throws Exception {
		System.out.println("병원수정페이지  no:"+map.get("no"));
		return "backend/pharmnhospital/HospitalEdit.tiles";
	}
	
	// [병원 수정 처리]
	@RequestMapping("HospitalEditComplete.do")
	public String hospitalEditComplete(@RequestParam Map map, HttpServletRequest req) throws Exception {
		
		System.out.println("name:"+map.get("name"));
		System.out.println("contact:"+map.get("contact"));
		System.out.println("addr:"+map.get("addr"));
		System.out.println("monopen:"+map.get("monopen"));
		System.out.println("monclose:"+map.get("monclose"));
		System.out.println("holiopen:"+map.get("holiopen"));
		System.out.println("holiclose:"+map.get("holiclose"));
		String[] subjects = req.getParameterValues("subject");
		for(String subject : subjects) {
			System.out.println("subject:"+subject);
		}
		
		return "backend/pharmnhospital/HospitalView.tiles";
	}
	
	// [병원 삭제]
	@RequestMapping("HospitalDelete.do")
	public String deleteHospital(@RequestParam Map map) throws Exception {
		System.out.println("병원 삭제 처리:no"+map.get("no"));		
		return "backend/pharmnhospital/HospitalList.tiles";
	}
	
	
	// ▲ 병원
	// ▼ 약국
	
	
	// [약국 목록 페이지로 이동] 
	@RequestMapping("CommonPharmacy.do")
	public String listPharmacy() throws Exception {
		
		System.out.println("약국 목록");
		
		return "backend/pharmnhospital/PharmList.tiles";
	}
	
	// [약국 등록 페이지로 이동] 
	@RequestMapping("PharmacyRegister.do")
	public String moveRegistPharmacy() throws Exception {
		System.out.println("약국 등록페이지");
		return "backend/pharmnhospital/PharmRegister.tiles";
	}
	
	// [약국 등록 처리] 
	@RequestMapping("PharmRegistComplete.do")
	public String pharmRegistComplete(@RequestParam Map map, HttpServletRequest req) throws Exception {
		System.out.println("name:"+map.get("name"));
		System.out.println("contact:"+map.get("contact"));
		System.out.println("addr:"+map.get("addr"));
		System.out.println("monopen:"+map.get("monopen"));
		System.out.println("monclose:"+map.get("monclose"));
		System.out.println("holiopen:"+map.get("holiopen"));
		System.out.println("holiclose:"+map.get("holiclose"));
		return "backend/pharmnhospital/PharmList.tiles";
	}
	
	// [약국 상세보기 페이지]
	@RequestMapping("PharmView.do")
	public String viewPharmacy(@RequestParam Map map) throws Exception {
		System.out.println("약국상세보기 no:"+map.get("no"));
		return "backend/pharmnhospital/PharmView.tiles";
	}

	// [약국 수정 페이지로 이동]
	@RequestMapping("PharmacyEdit.do")
	public String editPharmacy(@RequestParam Map map) throws Exception {
		System.out.println("약국 수정 페이지 no:"+map.get("no"));
		return "backend/pharmnhospital/PharmEdit.tiles";
	}
	
	// [약국 수정 처리]
	@RequestMapping("PharmEditComplete.do")
	public String pharmEditComplete(@RequestParam Map map, HttpServletRequest req) throws Exception {
		System.out.println("name:"+map.get("name"));
		System.out.println("contact:"+map.get("contact"));
		System.out.println("addr:"+map.get("addr"));
		System.out.println("monopen:"+map.get("monopen"));
		System.out.println("monclose:"+map.get("monclose"));
		System.out.println("holiopen:"+map.get("holiopen"));
		System.out.println("holiclose:"+map.get("holiclose"));
		return "backend/pharmnhospital/PharmView.tiles";
	}

	
	// [약국 삭제]
	@RequestMapping("PharmacyDelete.do")
	public String deletePharmacy(@RequestParam Map map) throws Exception {
		System.out.println("약국 삭제 처리 no:"+map.get("no"));
		return "backend/pharmnhospital/PharmList.tiles";
	}

	
}