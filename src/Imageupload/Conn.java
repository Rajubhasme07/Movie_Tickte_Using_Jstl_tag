package Imageupload;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.SQLException;




public class Conn {
	private static String jdbcurl="jdbc:mysql://localhost:3306/movies";
	private static String suname="root";
	private static String spass="abc123";
	
	
	public static Connection takeConnection(){
		 Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driver Registerd");
			try {
				con=DriverManager.getConnection(jdbcurl, suname, spass);
				System.out.println("connection Successffully");
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return con;
		
	}
	
	
	
	
}
