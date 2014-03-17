package deep.admin.svc;

import deep.admin.bean.User;

public interface IUserSvc {
	User getByAccount(String username);
}
