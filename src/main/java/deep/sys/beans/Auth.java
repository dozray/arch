package deep.sys.beans;

import java.util.List;

public class Auth {
	private Long 	id;
	private String 	name;
	private List<Rule> rules = null;
	private List<Resource>	resource = null;
	
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
	
	public Auth(){}
	
	public Auth(Long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}	
}
