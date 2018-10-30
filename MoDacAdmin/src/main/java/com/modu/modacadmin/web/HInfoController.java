package com.modu.modacadmin.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.modu.modacadmin.service.HInfoCategDto;
import com.modu.modacadmin.service.HInfoCategService;
import com.modu.modacadmin.service.HInfoDto;
import com.modu.modacadmin.service.HInfoService;
import com.modu.modacadmin.service.NoticeDto;
import com.modu.modacadmin.service.NoticeService;
import com.modu.modacadmin.service.impl.PagingUtil;

@Controller
public class HInfoController {
//	@Value("${PAGE_SIZE}")
	private int pageSize = 4;
//	@Value("${BLOCK_PAGE")
	private int blockPage = 4;
	
	@Resource(name="hInfoService")
	private HInfoService service;
	
	@RequestMapping(value="healthinfoWriteForm.do",method=RequestMethod.GET)
	public String HealthInfoWrite(@RequestParam Map map, Model model) throws Exception {
		System.out.println("HInfoWriteForm_categno: "+map.get("categno"));
		model.addAttribute("categno", map.get("categno"));
		return "healthinfo/HealthInfoWrite.tiles";
	}
	
	@RequestMapping(value="HealthinfoWrite.do",method = {RequestMethod.POST})
	public String hInfoWirte(HInfoDto dto) throws Exception {
		System.out.println("image"+dto.getImage());
		System.out.println("categno"+dto.getCategno());
		System.out.println("title"+dto.getTitle());
		System.out.println("content"+dto.getContent());
		service.insert(dto);
		return "forward:healthinfoCategoryView.do?categno="+dto.getCategno();
	}
	
	@RequestMapping("healthinfoView.do")
	public String healthinfoView(@RequestParam Map map, Model model) throws Exception {
		HInfoDto record = service.selectOne(map);
		record.setContent(record.getContent().replace("\r\n","<br/>"));
		model.addAttribute("record", record);
		return "healthinfo/HealthInfoView.tiles";
	}
	
	@RequestMapping("healthinfoEditForm.do")
	public String healthinfoEditForm(@RequestParam Map map, Model model) throws Exception {
		HInfoDto record = service.selectOne(map);
		record.setContent(record.getContent().replace("\r\n","<br/>"));
		model.addAttribute("record", record);
		return "healthinfo/HealthInfoEdit.tiles";
	}
	
	@RequestMapping("healthinfoEdit.do")
	public String healthinfoEdit(@RequestParam Map map, Model model) throws Exception {
		HInfoDto dto = service.selectOne(map);
		System.out.println("service.update(dto):"+service.update(dto));
		service.update(dto);
		System.out.println("editcontroller_categno"+dto.getCategno());
		return "forward:healthinfoView.do?categno="+dto.getCategno()+"&healthinfono="+dto.getHealthinfono();
	}
	
	@RequestMapping("hInfoDelete.do")
	public String healthinfoDelete(@RequestParam Map map) throws Exception {
		HInfoDto dto = service.selectOne(map);
		service.delete(dto);
		return "forward:healthinfoCategoryView.do?categno="+dto.getCategno();
	}
}	