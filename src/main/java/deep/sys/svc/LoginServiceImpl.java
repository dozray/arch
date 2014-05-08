package deep.sys.svc;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import deep.sys.beans.User;

@Service("LoginService")
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private UserSvc us;
	
	public boolean validate(User user){
		try{	
			return us.isExistUser(user.getCode(),user.getPassword());
		}catch(Exception e){
			System.out.println("validate exception:"+e.getStackTrace());
			return false;
		}
	}

	/**
	public boolean validate(User user) {
		String SQL ="SELECT * FROM sys_users WHERE userName = '"+user.getUserName()+"' and password = '"+user.getPassword()+"';";
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
	**/
}
