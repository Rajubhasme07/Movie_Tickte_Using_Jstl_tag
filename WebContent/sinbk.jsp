<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Connection.jsp" %>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>back</title>
</head>
<body>


        
         <c:set var="apass" value="${param.apass}"/>
        <c:set  var="aname" value="${param.aname}" scope="session"/>

         <sql:query dataSource = "${snapshot}" var ="result">
            SELECT * from ad_lg;
         </sql:query>
         
         <c:forEach var="row" items="${result.rows}">
     
        
			<c:choose>
			
			<c:when test="${row.user_name==aname && row.user_pass==apass}">
			<c:redirect url="adhome.jsp?ntf=Login Successfully"></c:redirect>
			</c:when>
			
			
			
			 <c:otherwise>
          
            <c:redirect url="signin.jsp?ntf=Wrong Credential"></c:redirect>
            
         </c:otherwise>
			
			
			</c:choose>


       </c:forEach>

</body>
</html>