package security;

import java.util.Collection;
import java.util.Iterator;

import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;

/**
 * 在这个类中，最重要的是decide方法，
 * 如果不存在对该资源的定义，直接放行；
 * 否则，如果找到正确的角色，即认为拥有权限，并放行，
 * 否则throw new AccessDeniedException("no right")。
 * 所有的异常建议平台统一进行封装并管理。
 * @author 王世军
 *
 */
public class MyAccessDecisionManagerBean implements AccessDecisionManager{
	/**
	 * 在这个方法里，需要比较配置属性和授权。
	 * 1.一个URL对象，过滤器filter用来通过这个url来找授权配置。
	 * 2.查找授权配置里是否有当前authentication里的属性
	 * 3.如果没有匹配，则抛出accessDeniedException异常
	 */
	public void decide(Authentication authentication, Object object,
            Collection<ConfigAttribute> configAttributes)
            		throws AccessDeniedException, InsufficientAuthenticationException {
		System.out.println("================开始决策是否有权限==========================");
		if(configAttributes == null){
			return ;
        }
		System.out.println(object.toString());  //object is a URL.
        Iterator<ConfigAttribute> ite=configAttributes.iterator();
        while(ite.hasNext()){
        	ConfigAttribute ca=ite.next();
            String needRole=((SecurityConfig)ca).getAttribute();
            System.err.println("needRole is ："+needRole);
            for(GrantedAuthority ga:authentication.getAuthorities()){
            	if(needRole.equals(ga.getAuthority())){  //ga is user's role.
            		System.out.println("================有权限访问。。。dicide结束==========================");
            		return;
                }
            }
        }
        System.err.println("您没有没有权限访问该页面！");
        throw new AccessDeniedException("没有权限");
    }

	public boolean supports(ConfigAttribute attribute) {
		System.out.println("开始MyAccessDecision里的supports(ConfigAttribute)");
		return true;
    }

	public boolean supports(Class<?>clazz) {
		System.out.println("开始MyAccessDecision里的supports(Class)");
		return true;
    }

	
}
