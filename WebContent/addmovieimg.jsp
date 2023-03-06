<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
			Part file = request.getPart("image");
			
			
			
			System.out.println(file);
			
			String imageFileName=getSubmittedFileName(file);
			System.out.println("Selected Image File Name : "+ imageFileName);
			String uploadPath="D:/program/Movie_Ticket/WebContent/img"+imageFileName;
			System.out.println("Upload Path : "+uploadPath);
			
			//Uploading Image to a folder
			
			try
			{
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=file.getInputStream();
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			
			}
			
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			
			
			
			%>
			<%!
			private static String getSubmittedFileName(Part part) {
			    for (String cd : part.getHeader("content-disposition").split(";")) {
			        if (cd.trim().startsWith("filename")) {
			            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
			            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1);
			        }
			    }
			return null;
			}
			%>
</body>
</html>