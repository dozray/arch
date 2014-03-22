package deep.admin.svc;

import java.util.HashMap;
import java.util.Map;

import deep.admin.bean.User;

public class UserSvc implements IUserSvc {

	private Map<String,User> users = new HashMap<String,User>();
		
		
	public UserSvc() {
		users.put("lyx", new User("多多","123456"));
		users.put("gl", new User("郭丽","123456"));
		users.put("lbn", new User("伯南","123456"));
		users.put("zzy", new User("子宜","123456"));	
	}

	public User getByAccount(String username) {
		User u = users.get(username);		
		return u;
	}
	
}
