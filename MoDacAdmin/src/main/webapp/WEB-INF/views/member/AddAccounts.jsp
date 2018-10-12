<%@page import="java.sql.SQLIntegrityConstraintViolationException"%>
<%@page import="javax.annotation.Resources"%>
<%@page import="com.modu.modacadmin.service.TestService"%>
<%@page import="javax.annotation.Resource"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.modu.modacadmin.service.impl.ManagersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- LoginProcess.jsp -->
<%		
Connection conn = null;
PreparedStatement psmt = null;
String sql = null;
ResultSet rs = null;
int count = 1;

request.setCharacterEncoding("UTF-8");

try {
	Class.forName("oracle.jdbc.OracleDriver");
	String url = "jdbc:oracle:thin:@mddbinstance.cwtdm29apwel.us-east-2.rds.amazonaws.com:1521:orcl";
	conn = DriverManager.getConnection(url, "mdadmin", "modacadmin");
	System.out.println("연결성공");
} catch(Exception e) {
	if(conn != null) conn.close();
	System.out.println("연결실패"); e.printStackTrace();
}


////////////////////////////////////////////////////

//사용자 입력값 받기]
String newuser = request.getParameter("newuser");
String newpass = request.getParameter("newpass");
String newname = request.getParameter("newname");
String passCheck = request.getParameter("passCheck");

sql = "SELECT * FROM managers WHERE mid = ?";
psmt = conn.prepareStatement(sql);
psmt.setString(1, newuser);
rs = psmt.executeQuery();
if(rs.next()) {
	if(conn != null) conn.close();
	if(psmt != null) psmt.close();
	if(rs != null) rs.close();
	System.out.println("111");

	out.println("<script>");
	out.println("alert('가입할 수 없는 계정입니다');");
	out.println("location.href='"+request.getContextPath()+"/Register.do';");
	out.println("</script>");
}
if(rs != null) rs.close();

if(newuser == null || newuser.trim().equals("") 
	|| newpass == null || newpass.equals("")
	|| !newpass.equals(passCheck) 
	|| newname == null || newname.trim().equals("")) {
	out.println("<script>");
	out.println("alert('아이디 또는 비밀번호를 다시 입력해주세요');");
	out.println("history.back();");
	out.println("</script>");
} else {
	int affected = 0;

	try {
		sql = "INSERT INTO managers VALUES(?, ?, ?)";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, newuser);
		psmt.setString(2, newname);
		psmt.setString(3, newpass);		
		affected = psmt.executeUpdate();

	} catch(Exception e) {
		System.out.println("2");
		out.println("<script>");
		out.println("alert('가입할 수 없는 계정입니다');");
		out.println("location.href='"+request.getContextPath()+"/Register.do';");
		out.println("</script>");
		if(conn != null) conn.close();
		if(psmt != null) psmt.close();
	}
	if(conn != null) conn.close();
	if(psmt != null) psmt.close();
	if(affected == 1) {
		if(conn != null) conn.close();
		if(psmt != null) psmt.close();
		session.setAttribute("registerSuccess", "관리자계정 추가 성공");
		out.println("<script>");
		out.println("location.href='"+request.getContextPath()+"/Register.do';");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("alert('다시 입력해주세요');");
		out.println("history.back();");
		out.println("</script>");
	}
	
}
%>

