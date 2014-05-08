package deep.sys.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import deep.sys.beans.User;

@Service
@Transactional(readOnly=true)
public class UserSvc implements IUserSvc {

	@Autowired
	private UserRepo ur;
		
	@Transactional
	public User addUser(User u){
		return ur.saveAndFlush(u);
	}

	@Transactional
	public void delUser(Long id){
		ur.delete(id);
	}

	@Transactional
	public  User modiUser(User u){
		return ur.save(u);
	}

	public User get(Long id){
		return ur.findOne(id);
	}
	public List<User> getAll(){
		return ur.findAll();
	}
	public User getByAccount(String username) {
		return ur.getByAccount(username);
	}
	public boolean isExistUser(String code,String password){
		return ur.isExistUser(code, password);
	}
	
}
