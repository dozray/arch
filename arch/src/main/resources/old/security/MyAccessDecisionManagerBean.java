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
 * ��������У�����Ҫ����decide������
 * ��������ڶԸ���Դ�Ķ��壬ֱ�ӷ��У�
 * ��������ҵ���ȷ�Ľ�ɫ������Ϊӵ��Ȩ�ޣ������У�
 * ����throw new AccessDeniedException("no right")��
 * ���е��쳣����ƽ̨ͳһ���з�װ������
 * @author ������
 *
 */
public class MyAccessDecisionManagerBean implements AccessDecisionManager{
	/**
	 * ������������Ҫ�Ƚ��������Ժ���Ȩ��
	 * 1.һ��URL���󣬹�����filter����ͨ�����url������Ȩ���á�
	 * 2.������Ȩ�������Ƿ��е�ǰauthentication�������
	 * 3.���û��ƥ�䣬���׳�accessDeniedException�쳣
	 */
	public void decide(Authentication authentication, Object object,
            Collection<ConfigAttribute> configAttributes)
            		throws AccessDeniedException, InsufficientAuthenticationException {
		System.out.println("================��ʼ�����Ƿ���Ȩ��==========================");
		if(configAttributes == null){
			return ;
        }
		System.out.println(object.toString());  //object is a URL.
        Iterator<ConfigAttribute> ite=configAttributes.iterator();
        while(ite.hasNext()){
        	ConfigAttribute ca=ite.next();
            String needRole=((SecurityConfig)ca).getAttribute();
            System.err.println("needRole is ��"+needRole);
            for(GrantedAuthority ga:authentication.getAuthorities()){
            	if(needRole.equals(ga.getAuthority())){  //ga is user's role.
            		System.out.println("================��Ȩ�޷��ʡ�����dicide����==========================");
            		return;
                }
            }
        }
        System.err.println("��û��û��Ȩ�޷��ʸ�ҳ�棡");
        throw new AccessDeniedException("û��Ȩ��");
    }

	public boolean supports(ConfigAttribute attribute) {
		System.out.println("��ʼMyAccessDecision���supports(ConfigAttribute)");
		return true;
    }

	public boolean supports(Class<?>clazz) {
		System.out.println("��ʼMyAccessDecision���supports(Class)");
		return true;
    }

	
}
