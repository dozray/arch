package biz.bizimpl;

import java.util.List;

import dao.UserPowerDao;

import entity.Userpower;
import biz.UserPowerBiz;

public class UserPowerBizImpl implements UserPowerBiz{

	private UserPowerDao userPowerDao;
	public List<Userpower> getPower() {
		return userPowerDao.getPower();
	}
	public UserPowerDao getUserPowerDao() {
		return userPowerDao;
	}
	public void setUserPowerDao(UserPowerDao userPowerDao) {
		this.userPowerDao = userPowerDao;
	}
	
}
