package biz;

import java.util.List;

import entity.Userinfo;

public interface UserInfoBiz {
	List<Userinfo> getUserinfos();
	Userinfo getUserinfoByName(String userName);
}
