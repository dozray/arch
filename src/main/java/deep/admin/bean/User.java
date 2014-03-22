package deep.admin.bean;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;

public class User {
	private String userName;
	private String password;
	/** getXXX方法上的注解是spring MVC的验证注解，在action中调用 **/
	public User(){}
	public User(String username, String password){
		this.userName =username;
		this.password = password;
	}
	@NotNull(message = "用户名不能为空")
	public String getUserName(){
		return this.userName;
	}
	public void setUserName(String username){
		this.userName = username;
	}
	@NotNull(message = "密码不能为空")
	@Size(min = 4, max=8, message="密码在6~10之间")
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}
	@Override
	public String toString(){
		return userName+"#"+password;
	}
}