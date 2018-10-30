<%@page import="java.io.File"%>
<%@page import="org.springframework.web.multipart.MultipartFile"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	System.out.println("ImageUpload.jsp_경로얻어오는페이지");
	// 이미지 업로드할 경로
// 	String uploadPath = "/Upload";
	// 절대경로 얻기
	String uploadPath = session.getServletContext().getRealPath("/Upload");
	
	int size = 10 * 1024 * 1024; // 업로드 사이즈 제한 10M 이하
	String fileName = ""; // 파일명
	String isHinfo = null;
	MultipartRequest multi = null;
	try {
		// 파일업로드 및 업로드 후 파일명 가져옴
		multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		String file = (String) files.nextElement();
		fileName = multi.getFilesystemName(file);
		isHinfo = multi.getParameter("hinfo");
		System.out.println("isHinfo"+isHinfo);
	} catch (Exception e) {
		e.printStackTrace();
	}
	// 업로드된 경로와 파일명을 통해 이미지의 경로를 생성
	uploadPath = uploadPath + "\\" + fileName;
	System.out.println("uploadPath:"+uploadPath);
	
	if (isHinfo == null || isHinfo.trim().equals("")) {
		// 생성된 경로를 JSON 형식으로 보내주기 위한 설정
		JSONObject jobj = new JSONObject();
		jobj.put("url", uploadPath);
		jobj.put("fileName", fileName);
	
		response.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한 세팅
		out.print(jobj.toJSONString());
	}else if(isHinfo.equals("category")) { // 건강정보_카테고리
		fileName = "<img id='img_resize' src='Upload/" + fileName + "' border='0' alt='' />";
		System.out.println("fileName: "+fileName);
		String categname = multi.getParameter("categname");
		String explanation = multi.getParameter("explanation");
		explanation.replace("\r\n", "<br/>");
	%>
		<form name="fupload" method="post">
			<!-- action="HealthInfoWrite.jsp"  -->
			<input type="hidden" value="<%=uploadPath%>" name="uploadPath"/>
			<input type="hidden" value="<%=fileName %>" name="categimage"/>
			<input type="hidden" value="<%=categname%>" name="categname"/>
			<input type="hidden" value="<%=explanation%>" name="explanation"/>
		</form>
		<script>
			document.fupload.action="HInfoCategCreate.do";
			document.fupload.submit();
		</script>
	<%
	} else if(isHinfo.equals("hinfo")){
		fileName = "<img id='img_resize' src='Upload/" + fileName + "' border='0' alt='' />";
		System.out.println("건강정보_hinfo_fileName: "+fileName);
		String categno = multi.getParameter("categno");
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		System.out.println("content: "+content);
		String image = fileName;
	%>
		<form name="fupload" method="post" action="HealthinfoWrite.do">
			<input type="hidden" value="<%=uploadPath%>" name="uploadPath"/>
			<input type="hidden" value="<%=image %>" name="image"/>
			<input type="hidden" value="<%=categno%>" name="categno"/>
			<input type="hidden" value="<%=title %>" name="title"/>
			<input type="hidden" value="<%=content%>" name="content"/>
		</form>
		<script>
			document.fupload.action="HealthinfoWrite.do";
			document.fupload.submit();		
		</script>
	<%
	} else if(isHinfo.equals("categoryEdit")) { // 건강정보_카테고리
		if(fileName == null) fileName = multi.getParameter("categimage");
		else fileName = "<img id='img_resize' src='Upload/" + fileName + "' border='0' alt='' />";
		String categname = multi.getParameter("categname");
		String explanation = multi.getParameter("explanation");
		explanation.replace("\r\n", "<br/>");
		String categno = multi.getParameter("categno");
	%>
		<form name="fupload" method="post">
			<!-- action="HealthInfoWrite.jsp"  -->
			<input type="hidden" value="<%=uploadPath%>" name="uploadPath"/>
			<input type="hidden" value="<%=fileName %>" name="categimage"/>
			<input type="hidden" value="<%=categname%>" name="categname"/>
			<input type="hidden" value="<%=explanation%>" name="explanation"/>
			<input type="hidden" value="<%=categno%>" name="categno"/>
		</form>
		<script>
			document.fupload.action="HInfoCategEdit.do";
			document.fupload.submit();
		</script>
	<%
	} else { 
		// 생성된 경로를 JSON 형식으로 보내주기 위한 설정
		JSONObject jobj = new JSONObject();
		jobj.put("url", uploadPath);
		jobj.put("fileName", fileName);
	
		response.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한 세팅
		out.print(jobj.toJSONString());
	}
%>