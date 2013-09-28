package security;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.springframework.security.access.SecurityMetadataSource;
import org.springframework.security.access.intercept.AbstractSecurityInterceptor;
import org.springframework.security.access.intercept.InterceptorStatusToken;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;


/**
 * ���ĵ���InterceptorStatusToken token = super.beforeInvocation(fi);
 * ��������Ƕ����accessDecisionManager:decide(Object object)
 * ��securityMetadataSource:getAttributes(Object object)������
 * @author i
 *
 */
public class MyFilterSecurityInterceptor extends AbstractSecurityInterceptor implements Filter{
	private FilterInvocationSecurityMetadataSource securityMetadataSource;
		public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
			FilterInvocation fi = new FilterInvocation(request, response, chain);
			System.err.println("===================��������ʼ����==================");
			invoke(fi);
		}

			public FilterInvocationSecurityMetadataSource getSecurityMetadataSource() {
				return this.securityMetadataSource;
			}

			public Class<? extends Object> getSecureObjectClass() {
				return FilterInvocation.class;
		    }

			public void invoke(FilterInvocation fi) throws IOException,
				ServletException {
				InterceptorStatusToken token = super.beforeInvocation(fi);
				try {
					fi.getChain().doFilter(fi.getRequest(), fi.getResponse());
		        } finally {
		        	super.afterInvocation(token, null);
		        }
				System.err.println("===================��������������==================");
		    }

			public SecurityMetadataSource obtainSecurityMetadataSource() {
				return this.securityMetadataSource;
		    }

			public void setSecurityMetadataSource(FilterInvocationSecurityMetadataSource newSource) {
				this.securityMetadataSource = newSource;
		    }

			public void destroy() {
		    }

			public void init(FilterConfig arg0) throws ServletException {
		    }


}
