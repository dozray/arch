package deep.admin.svc;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import deep.admin.bean.User;



public class ShiroDbRealm extends AuthorizingRealm {

	private IUserSvc userService ;
	public void setUserSvc(IUserSvc userSvc){
		this.userService = userSvc;
	}
	
	@Override
	/**
	 * 为当前登录的Subject授予角色和权限
	 * 经测试：	1.需授权资源被访问时该方法被调用
	 * 			2.每次访问需要授权资源时都会执行该方法中的逻辑，这表明本例中未启用AuthorizationCache
	 * 			3.Web可以有shiro的缓存，dao层可以有hibernate的缓存 
	 * 
	 */
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		// 获取基于用户名和密码的令牌
		// 实际上这个authToken 是从LoginController里面currentUser.login(token)传过来的
		UsernamePasswordToken token = (UsernamePasswordToken)authcToken;
		// 从数据库中查询用户信息 
		User user = userService.getByAccount(token.getUsername());
		if(user !=null){
			// 此处无需对比，比对的逻辑Shiro会做，只需要返回一个和令牌相关的正确的验证信息
			return new SimpleAuthenticationInfo(user.getId(),user.getPassword(),getName());
		}
		else{ // 没有返回登录用户名对应的SimpleAuthenticationInfo对象，将在LoginController中抛出UnknownAccountException异常
			return null;
		}		
	}
	
}
