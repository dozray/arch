package dao.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import dao.UserPowerDao;
import entity.Userpower;

public class UserPowerDaoImpl extends DaoSupport implements UserPowerDao{

	public List<Userpower> getPower() {
		
//		List<Userpower> result=super.findBySql("from Userpower u group by u.interceptUrl",null);
		return super.findAll(Userpower.class);
	}

}
