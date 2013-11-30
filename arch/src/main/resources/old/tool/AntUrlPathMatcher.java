package tool;

import org.springframework.util.AntPathMatcher;
import org.springframework.util.PathMatcher;
/**
 * ���������ǰspring�汾�еĹ����࣬���ڵ�spring�汾�в����ڣ�������Ŀ��Ҫ��ʹ�÷��㣬�ʼ��뵽��Ŀ���С�
 * @author ������
 *
 */
public class AntUrlPathMatcher implements UrlMatcher{
	private boolean requiresLowerCaseUrl;
	private PathMatcher pathMatcher;
	public AntUrlPathMatcher(){
		this(true);
	}
	public AntUrlPathMatcher(boolean requiresLowerCaseUrl){
		this.requiresLowerCaseUrl=true;
		this.pathMatcher=new AntPathMatcher();
		this.requiresLowerCaseUrl=requiresLowerCaseUrl;
	}
	public Object compile(String path) {
		if(this.requiresLowerCaseUrl){
			return path.toLowerCase();
		}
		return path;
	}

	public boolean pathMatchesUrl(Object path, String url) {
		if(("/**".equals(path))||("**").equals(path)){
			return true;
		}
		return this.pathMatcher.match((String)path, url);
	}

	public String getUniversalMatchPattern() {
		return "/**";
	}
	public String toString(){
		return super.getClass().getName()+"[requiresLower='"+
				this.requiresLowerCaseUrl+"']";
	}
	public boolean requiresLowerCaseUrl() {
		return this.requiresLowerCaseUrl;
	}
	public boolean isRequiresLowerCaseUrl() {
		return requiresLowerCaseUrl;
	}
	public void setRequiresLowerCaseUrl(boolean requiresLowerCaseUrl) {
		this.requiresLowerCaseUrl = requiresLowerCaseUrl;
	}
	public PathMatcher getPathMatcher() {
		return pathMatcher;
	}
	public void setPathMatcher(PathMatcher pathMatcher) {
		this.pathMatcher = pathMatcher;
	}
	
}
