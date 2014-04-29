package deep.sys.svc;

import deep.sys.beans.User;


public interface LoginService {
	public boolean validate(User user);
}
