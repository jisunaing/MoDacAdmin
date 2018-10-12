<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- web-inf의 LoginProcess.jsp불러오기 -->
<%
	System.out.println("webapp의 addaccount");
%>
<jsp:include page="/WEB-INF/views/member/AddAccounts.jsp">
	<jsp:param value="<%=request.getParameter(\"newuser\") %>" name="newuser"/>
	<jsp:param value="<%=request.getParameter(\"newpass\") %>" name="newpass"/>
	<jsp:param value="<%=request.getParameter(\"passCheck\") %>" name="passCheck"/>
	<jsp:param value="<%=request.getParameter(\"newname\") %>" name="newname"/>
</jsp:include> 
