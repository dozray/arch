package biz.bizimpl;

import java.util.List;

import dao.UserInfoDao;
import entity.Userinfo;

public class Test {
	private UserInfoDao userInfoDao;

	public List<Userinfo> getAll(){
		return userInfoDao.getUserinfos();
	}
	public UserInfoDao getUserInfoDao() {
		return userInfoDao;
	}

	public void setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
	}
	
}
