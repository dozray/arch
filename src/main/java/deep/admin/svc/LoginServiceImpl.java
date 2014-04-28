package deep.admin.svc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import deep.admin.bean.User;

@Service("LoginService")
public class LoginServiceImpl implements LoginService{

	public boolean validate(User user) {
		String SQL ="SELECT * FROM sys_user WHERE userName = '"+user.getUserName()+"' and password = '"+user.getPassword()+"';";
		System.out.println("SQL : "+SQL);
		Statement stmt = null;
		try{
			stmt = ConnectionDAO.getStatement();
			ResultSet rs = stmt.executeQuery(SQL);
			if(null != rs && rs.next()){
				return true;
			}
			else
			{
				return false;
			}
		}catch(SQLException e){
			System.out.println("SQL Exception : "+e.getMessage());
			return false;
		}
	}
	
}
