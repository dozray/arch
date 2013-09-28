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
 * �����ڳ�ʼ��ʱ��Ӧ��ȡ��������Դ�����Ӧ��ɫ�Ķ���
 * ������Դ�ķ���Ȩ�޵Ķ��壬����ͨ��ʵ��FilterInvocationSecurityMetadataSource����ӿ�����ʼ�����ݡ�
 * ����loadResourceDefine��������������ٶ�index.jsp�����Դ����ҪROLE_USER��ɫ���û����ܷ���,
 * other.jsp�����Դ����ҪROLE_NO��ɫ���û����ܷ��ʡ�
 * ������У�����һ������ĵĵط��������ṩĳ����Դ��Ӧ��Ȩ�޶��壬��getAttributes�������صĽ����
 * ע�⣬��������ʹ�õ���AntUrlPathMatcher���path matcher�����URL�Ƿ�����Դ����ƥ�䣬
 * ��ʵ���㻹Ҫ������ķ�ʽ��ƥ�䣬�����Լ�ʵ��һ��matcher��
 * ����Ľ�ɫ����Դ�����Դ����ݿ��л�ȡ������ͨ�����Ƿ�װ��ƽ̨���־ò�������ȡ�͹���
 * 
 * 
 * �ù���������Ҫ���þ���ͨ��spring������IoC����securityMetadataSource��  
 * securityMetadataSource�൱�ڱ������Զ����MyInvocationSecurityMetadataSourceService��  
 * ��MyInvocationSecurityMetadataSourceService������������ݿ���ȡȨ�޺���Դ��װ�䵽HashMap�У�  
 * ��Spring Securityʹ�ã�����Ȩ��У�顣 
 * @author ������
 *
 */
public class MyInvocationSecurityMetadataSource implements FilterInvocationSecurityMetadataSource {
	private UserPowerBiz userPowerBiz;
	//��spring����  
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
		System.err.println("============================��ʼ������Դ=================");
		resourceMap = new HashMap<String, Collection<ConfigAttribute>>();
		//���������Դһ��Ҫ���ո�ʽ�źá�
        List<Userpower> userpowers=userPowerBiz.getPower();
        
        for(Userpower userpower:userpowers){
        	//����Ѿ����ڸ���Դkey..
        	if(resourceMap.containsKey(userpower.getInterceptUrl())){
        		ConfigAttribute configAttribute = new SecurityConfig(userpower.getRoleName());
        		Collection<ConfigAttribute> configAttributes=resourceMap.get(userpower.getInterceptUrl());
        		configAttributes.add(configAttribute);
        		resourceMap.put(userpower.getInterceptUrl(), configAttributes);
        	}else{
        		//��������ڸ���Դkey...
        		Collection<ConfigAttribute> configAttributes = new ArrayList<ConfigAttribute>();
            	ConfigAttribute configAttribute = new SecurityConfig(userpower.getRoleName());
            	configAttributes.add(configAttribute);
            	resourceMap.put(userpower.getInterceptUrl(), configAttributes);
        	}
        }
        System.err.println("============================������Դ����=================");
    }

	// According to a URL, Find out permission configuration of this URL.
	public Collection<ConfigAttribute> getAttributes(Object object)
			throws IllegalArgumentException {
	// guess object is a URL.
		System.out.println("============��ȡȨ����Դ���Կ�ʼ====================");
        String url = ((FilterInvocation)object).getRequestUrl();
        Iterator<String>ite = resourceMap.keySet().iterator();
        while (ite.hasNext()) {
            String resURL = ite.next();
            if (urlMatcher.pathMatchesUrl(resURL, url)) {
            	System.out.println("============�ѻ��Ȩ����Դ����====================");
            	Collection<ConfigAttribute> returnCfg=resourceMap.get(resURL);
            	return returnCfg;
            }
        }
        System.out.println("============��ԴURL�Ҳ������������ݿ⣡====================");
        return null;
    }
	/**
	 * �����ݿ����Ȩ��ֵ�䶯ʱ��ˢ���¸÷��������¼���Ȩ�޵��ڴ棡
	 */
	public static void refreshResource(){
		resourceMap=null;
	}

	public boolean supports(Class<?>clazz) {
		System.out.println("============Metadata���supports(class)====================");
		return true;
    }

	public Collection<ConfigAttribute> getAllConfigAttributes() {
		System.out.println("============Metadata���getAllConfigAttributes()====================");
		return new ArrayList<ConfigAttribute>();
    }

	      
}
