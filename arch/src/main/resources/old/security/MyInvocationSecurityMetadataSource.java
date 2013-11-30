package security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

import biz.UserPowerBiz;

import entity.Userpower;

import tool.AntUrlPathMatcher;
import tool.UrlMatcher;
/**
 * 此类在初始化时，应该取到所有资源及其对应角色的定义
 * 对于资源的访问权限的定义，我们通过实现FilterInvocationSecurityMetadataSource这个接口来初始化数据。
 * 看看loadResourceDefine方法，我在这里，假定index.jsp这个资源，需要ROLE_USER角色的用户才能访问,
 * other.jsp这个资源，需要ROLE_NO角色的用户才能访问。
 * 这个类中，还有一个最核心的地方，就是提供某个资源对应的权限定义，即getAttributes方法返回的结果。
 * 注意，我例子中使用的是AntUrlPathMatcher这个path matcher来检查URL是否与资源定义匹配，
 * 事实上你还要用正则的方式来匹配，或者自己实现一个matcher。
 * 这里的角色和资源都可以从数据库中获取，建议通过我们封装的平台级持久层管理类获取和管理。
 * 
 * 
 * 该过滤器的主要作用就是通过spring著名的IoC生成securityMetadataSource。  
 * securityMetadataSource相当于本包中自定义的MyInvocationSecurityMetadataSourceService。  
 * 该MyInvocationSecurityMetadataSourceService的作用提从数据库提取权限和资源，装配到HashMap中，  
 * 供Spring Security使用，用于权限校验。 
 * @author 王世军
 *
 */
public class MyInvocationSecurityMetadataSource implements FilterInvocationSecurityMetadataSource {
	private UserPowerBiz userPowerBiz;
	//由spring调用  
	public MyInvocationSecurityMetadataSource(UserPowerBiz userPowerBiz) {  
        this.userPowerBiz = userPowerBiz;  
        loadResourceDefine();  
    }  
	

	private UrlMatcher urlMatcher = new AntUrlPathMatcher();
	private static Map<String, Collection<ConfigAttribute>> resourceMap = null;

	public MyInvocationSecurityMetadataSource() {
		loadResourceDefine();
    }

	private void loadResourceDefine() {
		System.err.println("============================开始加载资源=================");
		resourceMap = new HashMap<String, Collection<ConfigAttribute>>();
		//这里加载资源一定要按照格式放好。
        List<Userpower> userpowers=userPowerBiz.getPower();
        
        for(Userpower userpower:userpowers){
        	//如果已经存在该资源key..
        	if(resourceMap.containsKey(userpower.getInterceptUrl())){
        		ConfigAttribute configAttribute = new SecurityConfig(userpower.getRoleName());
        		Collection<ConfigAttribute> configAttributes=resourceMap.get(userpower.getInterceptUrl());
        		configAttributes.add(configAttribute);
        		resourceMap.put(userpower.getInterceptUrl(), configAttributes);
        	}else{
        		//如果不存在该资源key...
        		Collection<ConfigAttribute> configAttributes = new ArrayList<ConfigAttribute>();
            	ConfigAttribute configAttribute = new SecurityConfig(userpower.getRoleName());
            	configAttributes.add(configAttribute);
            	resourceMap.put(userpower.getInterceptUrl(), configAttributes);
        	}
        }
        System.err.println("============================加载资源结束=================");
    }

	// According to a URL, Find out permission configuration of this URL.
	public Collection<ConfigAttribute> getAttributes(Object object)
			throws IllegalArgumentException {
	// guess object is a URL.
		System.out.println("============获取权限资源属性开始====================");
        String url = ((FilterInvocation)object).getRequestUrl();
        Iterator<String>ite = resourceMap.keySet().iterator();
        while (ite.hasNext()) {
            String resURL = ite.next();
            if (urlMatcher.pathMatchesUrl(resURL, url)) {
            	System.out.println("============已获得权限资源属性====================");
            	Collection<ConfigAttribute> returnCfg=resourceMap.get(resURL);
            	return returnCfg;
            }
        }
        System.out.println("============资源URL找不到！请检查数据库！====================");
        return null;
    }
	/**
	 * 当数据库里的权限值变动时，刷新下该方法，重新加载权限到内存！
	 */
	public static void refreshResource(){
		resourceMap=null;
	}

	public boolean supports(Class<?>clazz) {
		System.out.println("============Metadata里的supports(class)====================");
		return true;
    }

	public Collection<ConfigAttribute> getAllConfigAttributes() {
		System.out.println("============Metadata里的getAllConfigAttributes()====================");
		return new ArrayList<ConfigAttribute>();
    }

	      
}
