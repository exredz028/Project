package login.sumit.registration;
import java.sql.*;

public class MyConnectionProvider implements Myprovider {
	
	static Connection con = null;
	public static Connection getCon() {
		try {
			//String dbDriver = "com.mysql.jdbc.Driver";
			Class.forName("com.mysql.jdbc.Driver");//com.mysql.jdbc.Driver
			con=DriverManager.getConnection(connUrl,username,pwd);
		}catch(Exception e){
			System.out.println(e);
		}
		return con;
	}

}
