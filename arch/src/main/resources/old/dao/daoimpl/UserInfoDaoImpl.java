package dao.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import dao.UserInfoDao;
import entity.Userinfo;

public class UserInfoDaoImpl extends DaoSupport implements UserInfoDao{
//	public UserInfoDaoImpl(SessionFactory sessionFactory) {
//		super(sessionFactory);
//	}
	public List<Userinfo> getUserinfos() {
		List<Userinfo> userinfos=super.findAll(Userinfo.class);
		return userinfos;
	}
	public Userinfo getUserinfoByName(String userName) {
		Userinfo user=null;
		List<Userinfo> userinfos=super.findByProperty(Userinfo.class, "name", userName);
		if(userinfos.size()>0)
			user=userinfos.get(0);
		return user;
	}

}
