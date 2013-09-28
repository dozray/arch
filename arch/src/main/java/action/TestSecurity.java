package action;

import org.springframework.security.access.annotation.Secured;

import com.opensymphony.xwork2.ActionSupport;

public class TestSecurity extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Secured("ROLE_ADMIN")
	public String execute(){
		System.out.println("admin Message Success");
		return SUCCESS;
	}
}