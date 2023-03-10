package Imageupload;




import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mysql.cj.Session;


@WebServlet("/servlet")
@MultipartConfig
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
	
		
		Part file = request.getPart("image");
		
	
		
		
		System.out.println(file);
		
		String imageFileName=getSubmittedFileName(file);
		System.out.println("Selected Image File Name : "+ imageFileName);
		String uploadPath="D:/program/Movie_Ticket/WebContent/img/"+imageFileName;
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
		
       if(imageFileName.equals(null)){
			
			out.print("<script>alert(' Warning : Insert Image first !!')</script>");
		}
		else{
		
			try {
			
				Connection con = Conn.takeConnection();
				HttpSession session=request.getSession();
				String mname=(String)session.getAttribute("mname");
				
			System.out.println(mname);
				PreparedStatement ps = con.prepareStatement("update all_movies set mimage=? where mname=?");
				
				ps.setString(1, imageFileName);
				ps.setString(2, mname);
			
			
				
				int status = ps.executeUpdate();
				con.close();
				if(status>0)
				{
					
					response.sendRedirect("adhome.jsp");
					
	
				}
				
				else
				{
					out.print("Data not update");
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		

		
		
	}
	
	private static String getSubmittedFileName(Part part) {
	    for (String cd : part.getHeader("content-disposition").split(";")) {
	        if (cd.trim().startsWith("filename")) {
	            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
	            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
	        }
	    }
	return null;
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
