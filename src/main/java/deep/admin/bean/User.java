package deep.admin.bean;

public class User {
	private Long id;
	private String	name;
	private String 	password;
	private Boolean freezen;
	
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean getFreezen() {
		return freezen;
	}
	public void setFreezen(Boolean freezen) {
		this.freezen = freezen;
	}
	
	public User(){
		
	}
	public User(Long id, String name, String password, Boolean freezen) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.freezen = freezen;
	}
		
}
