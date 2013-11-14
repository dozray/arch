package deep.svc;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * A DTO object which is used as a form object
 * in create person and edit person forms.
 * @author Administrator
 *
 */
public class PersonDTO {
	private Long id;
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFistName() {
		return fistName;
	}

	public void setFistName(String fistName) {
		this.fistName = fistName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@NotEmpty
	private String fistName;
	
	@NotEmpty
	private String lastName;
	
	public PersonDTO(){
		
	}
	@Override
	public String toString(){
		return ToStringBuilder.reflectionToString(this);
	}	
}
