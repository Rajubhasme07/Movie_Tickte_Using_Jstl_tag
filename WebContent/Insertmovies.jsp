<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Connection.jsp" %> 
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD MOVIES</title>
</head>
<body>
		
			
		
<%-- 			
		<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/Movies" user ="root" password ="abc123"/> --%>
			
			<sql:update dataSource="${snapshot}" var="count">
			INSERT INTO All_Movies (mname,mrev,mtime,mdate,mcer,mdim,mcast,tkprice) VALUES (?,?,?,?,?,?,?,?)
			
			<sql:param value="${param.mname}"/>
			<sql:param value="${param.mrew}"/>
			<sql:param value="${param.mtime}"/>
			<sql:param value="${param.rdate}"/>
			<sql:param value="${param.mcer}"/>
			<sql:param value="${param.mdime}"/>
			<sql:param value="${param.mcast}"/>
			<sql:param value="${param.tkprice }"/>
		
			
			</sql:update>
			
			<c:if test="${count>=1}">
		   <c:redirect url = "Upposter.jsp?mname=${param.mname}"/>
			</c:if>
			
			<c:if test="${exception!=null}">
			
			</c:if>
			
			

</body>
</html>