package deep.admin.bean;

import java.util.List;

public class Role {
	
	private Long id;
	private String name;
	private List<User> users = null;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public List<User> getUser(){
		return users;
	}
	
	public void setUser(List<User> user){
		this.users = user;
	}
	
	public Role(){}
	
	public Role(Long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
}
