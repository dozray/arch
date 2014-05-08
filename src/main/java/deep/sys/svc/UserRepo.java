package deep.sys.svc;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import deep.sys.beans.User;

@Repository
public interface UserRepo extends JpaRepository<User,Long> {
	@Query(value="select o from User o where o.username =?1 ")
	public User getByAccount(String username);
	
	@Query(value="select case when count(o)>0 then true else false end  from User o where o.code=?1 and o.password=?2")
	public boolean isExistUser(String username,String password);
}