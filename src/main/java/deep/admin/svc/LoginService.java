package deep.admin.svc;

import deep.admin.bean.User;

public interface LoginService {
	public boolean validate(User user);
}
