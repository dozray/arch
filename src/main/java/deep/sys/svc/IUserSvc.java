package deep.sys.svc;

import deep.sys.beans.User;


public interface IUserSvc {
	User getByAccount(String username);
}
