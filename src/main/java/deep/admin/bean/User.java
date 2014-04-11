package deep.admin.bean;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class User {
	private Long id;
	private String code;
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
	
	public User(Long id, String code, String userName, String password,
			String phone, String remark) {
		super();
		this.id = id;
		this.code = code;
		this.userName = userName;
		this.password = password;
		this.phone = phone;
		this.remark = remark;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	@NotEmpty(message = "编码不能为空")
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	@NotEmpty(message = "用户名不能为空")
	public String getUserName(){
		return this.userName;
	}
	public void setUserName(String username){
		this.userName = username;
	}	
	@Size(min = 6, max=8, message="密码长度在6位以上")
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