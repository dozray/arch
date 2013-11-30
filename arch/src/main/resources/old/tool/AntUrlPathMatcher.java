package tool;

import org.springframework.util.AntPathMatcher;
import org.springframework.util.PathMatcher;
/**
 * 这个类是以前spring版本中的工具类，现在的spring版本中不存在，由于项目需要且使用方便，故加入到项目当中。
 * @author 王世军
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
