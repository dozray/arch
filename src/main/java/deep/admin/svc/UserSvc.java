package deep.admin.svc;

import java.util.HashMap;
import java.util.Map;

import deep.admin.bean.User;

public class UserSvc implements IUserSvc {

	private Map<String,User> users = new HashMap<String,User>();
		
		
	public UserSvc() {
		users.put("lyx", new User(5L,"多多","123456",false));
		users.put("gl", new User(4L,"郭丽","123456",false));
		users.put("lbn", new User(3L,"伯南","123456",false));
		users.put("zzy", new User(2L,"子宜","123456",false));	
	}

	public User getByAccount(String username) {
		User u = users.get(username);		
		return u;
	}
	
}
