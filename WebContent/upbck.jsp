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


			
		
		<sql:update dataSource="${snapshot}" var="con">
            UPDATE all_movies SET mname=?,mrev=?,mtime=?,mdate=?,mcer=?,mdim=?,mcast=?,tkprice=? where id=?
            <sql:param value="${param.umname}"/>
            <sql:param value="${param.umrew}"/>
            <sql:param value="${param.umtime}"/>
             <sql:param value="${param.umdate}"/>
              <sql:param value="${param.umcer}"/>
               <sql:param value="${param.umdime}"/>
               <sql:param value="${param.umcast}"/>
                 <sql:param value="${param.utkprice}"/>
               
            <sql:param value="${id}" />
        	</sql:update>
       		 <c:if test="${con>=1}">
		   	<c:redirect url = "adhome.jsp?ntf=Data Updated Successfully"/>
			</c:if>
		
</body>
</html>
