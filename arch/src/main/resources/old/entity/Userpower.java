package entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Userpower entity. @author MyEclipse Persistence Tools
 */

public class Userpower implements java.io.Serializable {

	// Fields

	private Long id;
	private String roleName;
	private String interceptUrl;
	private Set userinfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Userpower() {
	}

	/** minimal constructor */
	public Userpower(Long id, String roleName, String interceptUrl) {
		this.id = id;
		this.roleName = roleName;
		this.interceptUrl = interceptUrl;
	}

	/** full constructor */
	public Userpower(Long id, String roleName, String interceptUrl,
			Set userinfos) {
		this.id = id;
		this.roleName = roleName;
		this.interceptUrl = interceptUrl;
		this.userinfos = userinfos;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getInterceptUrl() {
		return this.interceptUrl;
	}

	public void setInterceptUrl(String interceptUrl) {
		this.interceptUrl = interceptUrl;
	}

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

}