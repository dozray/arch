package deep.admin.bean;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;

public class User {
	private Long id;

	private String userName;
	private String password;
	private String phone;
	private String remark;
	
	/** getXXX方法上的注解是spring MVC的验证注解，在action中调用 **/
	public User(){}
	public User(String username, String password){
		this.userName =username;
		this.password = password;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString(){
		return userName+"#"+password;
	}
}