<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- web-inf의 LoginProcess.jsp불러오기 -->
<%@include file="/WEB-INF/views/loginout/LoginProcess.jsp"%>
<jsp:include page="/WEB-INF/views/loginout/LoginProcess.jsp">
	<jsp:param value="<%=request.getParameter(\"user\") %>" name="user"/>
	<jsp:param value="<%=request.getParameter(\"pass\") %>" name="pass"/>
</jsp:include> 
