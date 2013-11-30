package dao;

import java.util.List;

import entity.Userinfo;

public interface UserInfoDao {
	List<Userinfo> getUserinfos();
	Userinfo getUserinfoByName(String userName);
}

