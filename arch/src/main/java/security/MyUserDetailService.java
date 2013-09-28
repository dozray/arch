package security;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.User;

import biz.UserInfoBiz;

import dao.UserInfoDao;
import dao.daoimpl.UserInfoDaoImpl;
import entity.Userinfo;
/**
 * ��������У���Ϳ��Դ����ݿ��ж����û������룬��ɫ��Ϣ���Ƿ��������˺��Ƿ���ڵȡ�
 * ����ͨ�����Ƿ�װ��ƽ̨���־ò�������ȡ�͹���
 * @author i
 *
 */
@SuppressWarnings("deprecation")
public class MyUserDetailService implements UserDetailsService{
	private UserInfoBiz userInfoBiz ;


	public UserInfoBiz getUserInfoBiz() {
		return userInfoBiz;
	}


	public void setUserInfoBiz(UserInfoBiz userInfoBiz) {
		this.userInfoBiz = userInfoBiz;
	}



	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException, DataAccessException {
		System.out.println("UserName is  ��"+username);
        Collection<GrantedAuthority> auths=new ArrayList<GrantedAuthority>();
	    Userinfo userinfo=userInfoBiz.getUserinfoByName(username);
	    auths.add(new GrantedAuthorityImpl(userinfo.getUserpower().getRoleName()));
        User user = new User(username,userinfo.getPassword(), true, true, true, true, auths);
        return user;
    }

}
