package tool;

public abstract interface UrlMatcher {
	public abstract Object compile(String path);

	public abstract boolean pathMatchesUrl(Object path, String url);

	public abstract String getUniversalMatchPattern();

	public abstract boolean requiresLowerCaseUrl();

}
