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
ResultSet rs = null;
String sql = null;

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
String user = request.getParameter("user");
String pass = request.getParameter("pass");

if(user == null || user.trim().equals("") 
		|| pass == null || pass.trim().equals("")) {
	out.println("<script>");
	out.println("alert('아이디 또는 비밀번호를 다시 입력해주세요');");
	out.println("history.back();");
	out.println("</script>");
} else {
	sql = "SELECT COUNT(*) FROM managers WHERE mid = ? AND mpwd = ?";
	psmt = conn.prepareStatement(sql);
	psmt.setString(1, user);
	psmt.setString(2, pass);
	rs = psmt.executeQuery();
	
	if(rs.next()) {

		session.setAttribute("MID", user);
		session.setAttribute("MPWD", pass);
		if(rs != null) rs.close();
		if(conn != null) conn.close();
		if(psmt != null) psmt.close();
		out.println("<script>");
		out.println("location.href='"+request.getContextPath()+"/index.do?admin="+user+"';");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("alert('아이디 또는 비밀번호가 틀렸습니다')");
		out.println("history.back();");
		out.println("</script>");
	}
}

%>
