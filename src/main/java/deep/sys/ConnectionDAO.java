package deep.sys;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDAO {
	private static Connection conn;
	/**
	 * This method returns the connection object.
	 * @return Connection
	 */
	public static Connection getConnection(){
		try{			
			String driverName	=	"com.microsoft.sqlserver.jdbc.SQLServerDriver"; 			// JDBC驱动
			String dbName		=	"WYG_Cluster";												// here the name of Database.
			String url			=	"jdbc:sqlserver://172.16.4.250:1433; DatabaseName=";		// e.g. jdbc:mysql://localhost:3306/
			String uname 		=	"root";														// username
			String pwd			=	"wygdev";													// password
			
			// SQL jdbc driver
			Class.forName(driverName);
			try{
				if(null == conn || conn.isClosed()){
					conn = DriverManager.getConnection(url+dbName,uname,pwd);
				}
				
			}catch(SQLException e){
				System.out.println("SQL Exception occurred while getting connection object. \nDetails :"+e.getMessage());
				e.printStackTrace();
			}
		}catch(Exception ex){
			System.out.println("Exception occurred while getting connection object. \nDetails :"+ex.getMessage());
			ex.printStackTrace();
		}
		return conn;
	}
	public static Statement getStatement(){
		Statement stmt = null;
		try{
			Connection con = getConnection();
			stmt = con.createStatement();
		}catch(Exception e){
			System.out.println("Exception occurred while getting Statement object. \nDetails :"+e.getMessage());
		}
		return stmt;
	}
}
