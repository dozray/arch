package entity;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Long id;
	private Userpower userpower;
	private String name;
	private String password;
	private Long islock;

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(Long id, Userpower userpower) {
		this.id = id;
		this.userpower = userpower;
	}

	/** full constructor */
	public Userinfo(Long id, Userpower userpower, String name, String password,
			Long islock) {
		this.id = id;
		this.userpower = userpower;
		this.name = name;
		this.password = password;
		this.islock = islock;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Userpower getUserpower() {
		return this.userpower;
	}

	public void setUserpower(Userpower userpower) {
		this.userpower = userpower;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Long getIslock() {
		return this.islock;
	}

	public void setIslock(Long islock) {
		this.islock = islock;
	}

}