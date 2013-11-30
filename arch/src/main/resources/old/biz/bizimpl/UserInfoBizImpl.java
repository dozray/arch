package biz.bizimpl;

import java.util.List;

import dao.UserInfoDao;

import entity.Userinfo;
import biz.UserInfoBiz;

public class UserInfoBizImpl implements UserInfoBiz{
	private UserInfoDao userInfoDao;
	public List<Userinfo> getUserinfos() {
		return userInfoDao.getUserinfos();
	}

	public Userinfo getUserinfoByName(String userName) {
		return userInfoDao.getUserinfoByName(userName);
	}

	public UserInfoDao getUserInfoDao() {
		return userInfoDao;
	}

	public void setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
	}
	
	
	

}
