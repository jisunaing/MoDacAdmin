package com.modu.modacadmin.web;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.basic.BasicTreeUI.SelectionModelPropertyChangeHandler;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.modu.modacadmin.service.HospitalDto;
import com.modu.modacadmin.service.HospitalService;
import com.modu.modacadmin.service.NightPharmacyDto;
import com.modu.modacadmin.service.NightPharmacyService;
import com.modu.modacadmin.service.PartnerService;
import com.modu.modacadmin.service.PharmacyDto;
import com.modu.modacadmin.service.PharmacyService;
import com.modu.modacadmin.service.impl.PagingUtil;

@Controller
public class CommonManagingController {

	@Resource(name = "pharmacyService")
	private PharmacyService servicePH;
	@Resource(name = "nightPharmacyService")
	private NightPharmacyService serviceNPH;
	@Resource(name = "hospitalService")
	private HospitalService serviceHOS;
	@Resource(name = "partnerService")
	private PartnerService servicePS;

	@Value("${PAGESIZE}")
	private int pageSize;
	@Value("${BLOCKPAGE}")
	private int blockPage;

	// [병원 목록 페이지로 이동]
	@RequestMapping("CommonHospital.do")
	public String listHospital() throws Exception {
		return "backend/pharmnhospital/HospitalList.tiles";
	}

	// [병원 등록 페이지 이동]
	@RequestMapping("HospitalRegister.do")
	public String moveRegistHospital() throws Exception {
		return "backend/pharmnhospital/HospitalRegister.tiles";
	}

	// [병원 등록 처리]
	@RequestMapping("HospitalRegistComplete.do")
	public String hospitalRegistComplete(@RequestParam Map map, HttpServletRequest req) throws Exception {

		String[] subjects = req.getParameterValues("subject");
		
		serviceHOS.insert(map);
		
		for (String subject : subjects) {
			
			switch (subject) {
			
				case "가정의학과" : 
					map.put("subject", 10);
					serviceHOS.insertSubject(map);
					break;
				case "결핵과" :
					map.put("subject", 20);
					serviceHOS.insertSubject(map);
					break;
				case "내과" :
					map.put("subject", 30);
					serviceHOS.insertSubject(map);
					break;
				case "마취통증의학과" :
					map.put("subject", 40);
					serviceHOS.insertSubject(map);
					break;
				case "비뇨의학과" :
					map.put("subject", 50);
					serviceHOS.insertSubject(map);
					break;
				case "피부과" :
					map.put("subject", 60);
					serviceHOS.insertSubject(map);
					break;
				case "산부인과" :
					map.put("subject", 70);
					serviceHOS.insertSubject(map);
					break;
				case "성형외과" :
					map.put("subject", 80);
					serviceHOS.insertSubject(map);
					break;
				case "소아청소년과" :
					map.put("subject", 90);
					serviceHOS.insertSubject(map);
					break;
				case "신경외과" :
					map.put("subject", 100);
					serviceHOS.insertSubject(map);
					break;
				case "안과" :
					map.put("subject", 110);
					serviceHOS.insertSubject(map);
					break;
				case "영상의학과" :
					map.put("subject", 120);
					serviceHOS.insertSubject(map);
					break;
				case "외과" :
					map.put("subject", 130);
					serviceHOS.insertSubject(map);
					break;
				case "이비인후과" :
					map.put("subject", 140);
					serviceHOS.insertSubject(map);
					break;
				case "재활의학과" :
					map.put("subject", 150);
					serviceHOS.insertSubject(map);
					break;
				case "정신건강의학과" :
					map.put("subject", 160);
					serviceHOS.insertSubject(map);
					break;
				case "정형외과" :
					map.put("subject", 170);
					serviceHOS.insertSubject(map);
					break;
				case "치과" :
					map.put("subject", 180);
					serviceHOS.insertSubject(map);
					break;
				case "한방과" :
					map.put("subject", 190);
					serviceHOS.insertSubject(map);
					break;
				default:
					map.put("subject", 200);
					serviceHOS.insertSubject(map);
			}

		}
		
		return "backend/pharmnhospital/HospitalList.tiles";
	}

	// [병원 상세보기]
	@RequestMapping("HospitalView.do")
	public String viewHospital(@RequestParam Map map, Model model) throws Exception {
		
		HospitalDto record = serviceHOS.selectOne(map);
		List<HospitalDto> subjects = serviceHOS.subjectList(map);
		
		StringBuffer buffer = new StringBuffer();
		for(HospitalDto dto : subjects) {
			buffer.append(dto.getSubname()+" ");
		}
		
		model.addAttribute("record", record);
		model.addAttribute("subjects", buffer.toString());
		
		return "backend/pharmnhospital/HospitalView.tiles";
	}

	// [병원 수정 페이지 이동 ]
	@RequestMapping("HospitalEdit.do")
	public String moveEditHospital(@RequestParam Map map, Model model) throws Exception {
		
		HospitalDto record = serviceHOS.selectOne(map);
		List<HospitalDto> subjects = serviceHOS.subjectList(map);
		
		for(HospitalDto dto : subjects) {
			
			switch (dto.getSubname()) {
			
				case "가정의학과" : 
					model.addAttribute("family", "가정의학과");
					break;
				case "결핵과" :
					model.addAttribute("tuberculosis", "결핵과");
					break;
				case "내과" :
					model.addAttribute("medicine", "내과");
					break;
				case "마취통증의학과" :
					model.addAttribute("anesthetic", "마취통증의학과");
					break;
				case "비뇨의학과" :
					model.addAttribute("urology", "비뇨의학과");
					break;
				case "피부과" :
					model.addAttribute("skin", "피부과");
					break;
				case "산부인과" :
					model.addAttribute("obstetrics", "산부인과");
					break;
				case "성형외과" :
					model.addAttribute("plastic", "성형외과");
					break;
				case "소아청소년과" :
					model.addAttribute("child", "소아청소년과");
					break;
				case "신경외과" :
					model.addAttribute("nerve", "신경외과");
					break;
				case "안과" :
					model.addAttribute("ophthalmology", "안과");
					break;
				case "영상의학과" :
					model.addAttribute("imaging", "영상의학과");
					break;
				case "외과" :
					model.addAttribute("surgery", "외과");
					break;
				case "이비인후과" :
					model.addAttribute("otorhinolaryngology", "이비인후과");
					break;
				case "재활의학과" :
					model.addAttribute("rehabilitation", "재활의학과");
					break;
				case "정신건강의학과" :
					model.addAttribute("mental", "정신건강의학과");
					break;
				case "정형외과" :
					model.addAttribute("orthopedics", "정형외과");
					break;
				case "치과" :
					model.addAttribute("dentist", "치과");
					break;
				case "한방과" :
					model.addAttribute("oriental", "한방과");
					break;
				default:
					model.addAttribute("thoracic", "흉부외과");
			}
		}
		
		model.addAttribute("record", record);
		
		return "backend/pharmnhospital/HospitalEdit.tiles";
	}

	// [병원 수정 처리]
	@RequestMapping("HospitalEditComplete.do")
	public String hospitalEditComplete(@RequestParam Map map, HttpServletRequest req, Model model) throws Exception {
		
		serviceHOS.update(map);
		serviceHOS.deleteSubject(map);
		
		String[] selectsubject = req.getParameterValues("subject");
		
		for (String subject : selectsubject) {
			
			switch (subject) {
			
			case "가정의학과" : 
				map.put("subject", 10);
				serviceHOS.updateSubject(map);
				break;
			case "결핵과" :
				map.put("subject", 20);
				serviceHOS.updateSubject(map);
				break;
			case "내과" :
				map.put("subject", 30);
				serviceHOS.updateSubject(map);
				break;
			case "마취통증의학과" :
				map.put("subject", 40);
				serviceHOS.updateSubject(map);
				break;
			case "비뇨의학과" :
				map.put("subject", 50);
				serviceHOS.updateSubject(map);
				break;
			case "피부과" :
				map.put("subject", 60);
				serviceHOS.updateSubject(map);
				break;
			case "산부인과" :
				map.put("subject", 70);
				serviceHOS.updateSubject(map);
				break;
			case "성형외과" :
				map.put("subject", 80);
				serviceHOS.updateSubject(map);
				break;
			case "소아청소년과" :
				map.put("subject", 90);
				serviceHOS.updateSubject(map);
				break;
			case "신경외과" :
				map.put("subject", 100);
				serviceHOS.updateSubject(map);
				break;
			case "안과" :
				map.put("subject", 110);
				serviceHOS.updateSubject(map);
				break;
			case "영상의학과" :
				map.put("subject", 120);
				serviceHOS.updateSubject(map);
				break;
			case "외과" :
				map.put("subject", 130);
				serviceHOS.updateSubject(map);
				break;
			case "이비인후과" :
				map.put("subject", 140);
				serviceHOS.updateSubject(map);
				break;
			case "재활의학과" :
				map.put("subject", 150);
				serviceHOS.updateSubject(map);
				break;
			case "정신건강의학과" :
				map.put("subject", 160);
				serviceHOS.updateSubject(map);
				break;
			case "정형외과" :
				map.put("subject", 170);
				serviceHOS.updateSubject(map);
				break;
			case "치과" :
				map.put("subject", 180);
				serviceHOS.updateSubject(map);
				break;
			case "한방과" :
				map.put("subject", 190);
				serviceHOS.updateSubject(map);
				break;
			default:
				map.put("subject", 200);
				serviceHOS.updateSubject(map);
			}
			
		}
		
		HospitalDto record = serviceHOS.selectOne(map);
		List<HospitalDto> subjects = serviceHOS.subjectList(map);
		
		StringBuffer buffer = new StringBuffer();
		for(HospitalDto dto : subjects) {
			buffer.append(dto.getSubname()+" ");
		}
		
		model.addAttribute("record", record);
		model.addAttribute("subjects", buffer.toString());
		
		return "backend/pharmnhospital/HospitalView.tiles";
	}

	// [병원 삭제]
	@RequestMapping("HospitalDelete.do")
	public String deleteHospital(@RequestParam Map map) throws Exception {
		
		serviceHOS.deleteSubject(map);
		serviceHOS.delete(map);
		
		return "backend/pharmnhospital/HospitalList.tiles";
	}
	
	// [병원 검색]
	@RequestMapping("HospitalSearch.do")
	public String searchHospital(@RequestParam Map map, Model model, @RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req) throws Exception {
		
		int totalRecordCount = 0;
		int start = 0;
		int end = 0;
		String pagingString = null;
		String url = null;
		
		if (map.get("hosname") == null) {
			map.put("hosname", "");
		}
		if (map.get("hosaddr") == null) {
			map.put("hosaddr", "");
		}
		if (map.get("hosname").toString().equals("") && map.get("hosaddr").toString().equals("")) {

			url = "/HospitalSearch.do?";

		} else if (map.get("hosaddr").toString().equals("")) {

			String hosname = map.get("hosname").toString();
			url = "/HospitalSearch.do?hosname=" + hosname + "&";

		} else if (map.get("hosname").toString().equals("")) {

			String hosaddr = map.get("hosaddr").toString();
			url = "/HospitalSearch.do?hosaddr=" + hosaddr + "&";

		} else {

			String hosname = map.get("hosname").toString();
			String hosaddr = map.get("hosaddr").toString();
			url = "/HospitalSearch.do?hosname=" + hosname + "&hosaddr=" + hosaddr + "&";
		}
		totalRecordCount = serviceHOS.getTotalRecord(map);
		start = (nowPage-1)*pageSize+1;
		end = nowPage*pageSize;
		map.put("start", start);
		map.put("end", end);
		pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
				req.getContextPath() + url);
		
		List<HospitalDto> records = serviceHOS.selectList(map);
		model.addAttribute("records",records);
		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);
		
		return "backend/pharmnhospital/HospitalList.tiles";
	}

	
	// [제휴처리 페이지로 이동]
	@RequestMapping("HospitalUpdate.do")
	public String updateHospital(@RequestParam Map map, Model model, HttpServletResponse resp) throws Exception {	
		
		System.out.println(map.get("pid"));
		System.out.println(map.get("hosno"));
		
		
		// 사용자 측에서 입력한 병원 데이터 
		HospitalDto partnerInfo = serviceHOS.selectPartnerOne(map);
		if(partnerInfo == null) {
			
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>");
			out.println("alert('등록된 아이디가 아닙니다.');");
			out.println("history.back()");
			out.println("</script>");
			out.close();
			
		} else {
			
			map.put("partnerHosno", partnerInfo.getHosno());
			List<HospitalDto> partnerSubject = serviceHOS.partnerSubjectList(map);
			
			StringBuffer partnerBuf = new StringBuffer();
			for(HospitalDto dto : partnerSubject) {
				partnerBuf.append(dto.getSubname()+" ");
			}
			model.addAttribute("partnerInfo", partnerInfo);
			model.addAttribute("partnerSubjects", partnerBuf.toString());
			
			// 기존에 있던 병원 데이터
			HospitalDto originalInfo = serviceHOS.selectOne(map);
			List<HospitalDto> originalSubject = serviceHOS.subjectList(map);
			StringBuffer originalBuf = new StringBuffer();
			for(HospitalDto dto : originalSubject) {
				originalBuf.append(dto.getSubname()+" ");
			}
			model.addAttribute("originalInfo", originalInfo);
			model.addAttribute("originalSubjects", originalBuf.toString());
			
		}
		
		return "backend/pharmnhospital/HospitalUpdate.tiles";
		
	
	}
	
	// [제휴처리 완료 - 사용자 정보 적용]
	@RequestMapping("HospitalUpdateToPartner.do")
	public String updateCompleteHospitalToPartner(@RequestParam Map map) throws Exception {	
		
		/*
		 * 기존 정보를 사용하지 않고, 사용자가 입력한 정보를 사용하고자 할 경우
		 * 기존 정보를 삭제함
		 * 
		 */
		
		serviceHOS.deleteSubject(map);
		serviceHOS.delete(map);
		
		return "backend/pharmnhospital/HospitalList.tiles";
	}
	
	// [제휴처리 완료 - 기존 정보 적용]
	@RequestMapping("HospitalUpdateToOriginal.do")
	public String updateCompleteHospitalToOriginal(@RequestParam Map map) throws Exception {	
		
		/*
		 * 사용자가 입력한 정보를 사용하지 않고, 기존에 등록되어 있는 정보를 사용하는 경우
		 * 사용자가 등록한 hosno를 기존의 hosno로 수정한 후
		 * 사용자가 등록한 병원 정보를 삭제함
		 */
		
		servicePS.updatePartnerHospital(map);
		serviceHOS.deletePartnerSubject(map);
		serviceHOS.deletePartner(map);
		
		return "backend/pharmnhospital/HospitalList.tiles";
	}
	
	
	
	// ▲ 병원
	// ▼ 약국

	
	
	// [약국 목록 페이지로 이동]
	@RequestMapping("CommonPharmacy.do")
	public String listPharmacy() throws Exception {
		return "backend/pharmnhospital/PharmList.tiles";
	}

	// [약국 등록 페이지로 이동]
	@RequestMapping("PharmacyRegister.do")
	public String moveRegistPharmacy() throws Exception {
		return "backend/pharmnhospital/PharmRegister.tiles";
	}

	// [약국 등록 처리]
	@RequestMapping("PharmRegistComplete.do")
	public String pharmRegistComplete(@RequestParam Map map, HttpServletRequest req) throws Exception {

		if (map.get("pharm").toString().equals("all")) {// 일반약국 등록
			servicePH.insert(map);
		} else {// 심야약국 등록
			serviceNPH.insert(map);
		}

		return "backend/pharmnhospital/PharmList.tiles";
	}

	// [약국 상세보기 페이지]
	@RequestMapping("PharmView.do")
	public String viewPharmacy(@RequestParam Map map, Model model) throws Exception {

		PharmacyDto pharm;
		NightPharmacyDto nightPharm;

		if (map.get("pharm").equals("all")) {// 모든약국
			pharm = servicePH.selectOne(map);
			model.addAttribute("pharm", pharm);
		} else {// 심야약국
			nightPharm = serviceNPH.selectOne(map);
			model.addAttribute("nightPharm", nightPharm);
		}

		return "backend/pharmnhospital/PharmView.tiles";
	}

	// [약국 수정 페이지로 이동]
	@RequestMapping("PharmacyEdit.do")
	public String editPharmacy(@RequestParam Map map, Model model) throws Exception {

		PharmacyDto pharm;
		NightPharmacyDto nightPharm;

		if (map.get("pharm").toString().equals("all")) { // 모든 약국
			pharm = servicePH.selectOne(map); // 키값 no
			model.addAttribute("pharm", pharm);
		} else { // 심야약국
			nightPharm = serviceNPH.selectOne(map); // 키값 no
			model.addAttribute("nightPharm", nightPharm);
		}

		return "backend/pharmnhospital/PharmEdit.tiles";
	}

	// [약국 수정 처리]
	@RequestMapping("PharmEditComplete.do")
	public String pharmEditComplete(@RequestParam Map map, Model model) throws Exception {

		PharmacyDto pharm;
		NightPharmacyDto nightPharm;

		if (map.get("pharm").toString().equals("all")) {// 모든약국
			servicePH.update(map);
			pharm = servicePH.selectOne(map); // 수정 후 상세보기에 다시 뿌려주기 위함
			model.addAttribute("pharm", pharm);
		} else {// 심야약국
			serviceNPH.update(map);
			nightPharm = serviceNPH.selectOne(map); // 수정 후 상세보기에 다시 뿌려주기 위함
			model.addAttribute("nightPharm", nightPharm);
		}

		return "backend/pharmnhospital/PharmView.tiles";
	}

	// [약국 삭제]
	@RequestMapping("PharmacyDelete.do")
	public String deletePharmacy(@RequestParam Map map) throws Exception {

		if (map.get("pharm").toString().equals("all")) { // 모든 약국
			servicePH.delete(map);
		} else { // 심야 약국
			serviceNPH.delete(map);
		}

		return "backend/pharmnhospital/PharmList.tiles";
	}

	// [약국 검색]
	@RequestMapping("PharmacySearch.do")
	public String searchPharmacy(@RequestParam Map map, Model model,
			@RequestParam(required = false, defaultValue = "1") int nowPage, HttpServletRequest req) throws Exception {

		System.out.println(map.get("phname"));
		System.out.println(map.get("phaddr"));

		// 페이징을 위한 변수 선언
		int totalRecordCount = 0;
		int start = 0;
		int end = 0;
		String pagingString = null;
		String url = null;

		if (map.get("phname") == null) {
			map.put("phname", "");
		}
		if (map.get("phaddr") == null) {
			map.put("phaddr", "");
		}

		// 일반약국과 심야약국 변수 선언
		List<PharmacyDto> allPharms = null;
		List<NightPharmacyDto> nightPharms = null;

		if (map.get("pharm").toString().equals("night")) {// 심야약국

			if (map.get("phname").toString().equals("") && map.get("phaddr").toString().equals("")) {

				url = "/PharmacySearch.do?pharm=night&";

			} else if (map.get("phaddr").toString().equals("")) {

				String phname = map.get("phname").toString();
				url = "/PharmacySearch.do?pharm=night&phname=" + phname + "&";

			} else if (map.get("phname").toString().equals("")) {

				String phaddr = map.get("phaddr").toString();
				url = "/PharmacySearch.do?pharm=night&phaddr=" + phaddr + "&";

			} else {

				String phname = map.get("phname").toString();
				String phaddr = map.get("phaddr").toString();
				url = "/PharmacySearch.do?pharm=night&phname=" + phname + "&phaddr=" + phaddr + "&";

			}

			// 페이징
			totalRecordCount = serviceNPH.getTotalRecord(map);
			start = (nowPage - 1) * pageSize + 1;
			end = nowPage * pageSize;
			map.put("start", start);
			map.put("end", end);
			pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
					req.getContextPath() + url);
			nightPharms = serviceNPH.selectList(map);
			model.addAttribute("nightPharms", nightPharms);

		} else {// 일반약국

			if (map.get("phname").toString().equals("") && map.get("phaddr").toString().equals("")) {

				url = "/PharmacySearch.do?pharm=all&";

			} else if (map.get("phaddr").toString().equals("")) {

				String phname = map.get("phname").toString();
				url = "/PharmacySearch.do?pharm=all&phname=" + phname + "&";

			} else if (map.get("phname").toString().equals("")) {

				String phaddr = map.get("phaddr").toString();
				url = "/PharmacySearch.do?pharm=all&phaddr=" + phaddr + "&";

			} else {

				String phname = map.get("phname").toString();
				String phaddr = map.get("phaddr").toString();
				url = "/PharmacySearch.do?pharm=all&phname=" + phname + "&phaddr=" + phaddr + "&";

			}

			// 페이징
			totalRecordCount = servicePH.getTotalRecord(map);
			start = (nowPage - 1) * pageSize + 1;
			end = nowPage * pageSize;
			map.put("start", start);
			map.put("end", end);
			pagingString = PagingUtil.pagingBootStrapStyle(totalRecordCount, pageSize, blockPage, nowPage,
					req.getContextPath() + url);
			allPharms = servicePH.selectList(map);
			model.addAttribute("allPharms", allPharms);
		}

		model.addAttribute("pagingString", pagingString);
		model.addAttribute("totalRecordCount", totalRecordCount);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("pageSize", pageSize);

		return "backend/pharmnhospital/PharmList.tiles";
	}

}