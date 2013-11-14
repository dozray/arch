package deep.vo;
import java.util.Date;

import javax.persistence.*;

import org.apache.commons.lang.builder.ToStringBuilder;
@Entity
@Table(name="persons")
public class Person {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(name="creation_time",nullable=false)
	private Date creationTime;
	
	@Column(name="first_name",nullable=false)
	private String firstName;
	
	@Column(name="last_name",nullable=false)
	private String lastName;
	
	@Column(name="modified_time",nullable=false)
	private Date modifiedTime;
	
	@Version
	private long version = 0;
	
	public Long getId(){
		return id;
	}
	
	/**
	 * Gets a builder which is used to create Person objects.
	 * @param firstName	The first name of the created user.
	 * @param lastName	The last name of the create user.
	 * @return	A new Builder instance.
	 */
	public static Builder getBuilder(String firstName,String lastName){
		return new Builder(firstName,lastName);
	}
	
	public Date getCreationTime(){
		return creationTime;
	}
	
	public String getFirstName(){
		return firstName;
	}
	public String getLastName(){
		return lastName;
	}
	/**
	 * Gets the full name of the person.
	 * @return The full name of the person.
	 */
	@Transient
	public String getName(){
		StringBuilder sb = new StringBuilder();
		sb.append(firstName);
		sb.append(" ");
		sb.append(lastName);
		return sb.toString();
	}
	public Date getModifiedTime(){
		return modifiedTime;
	}
	public long getVersion(){
		return version;
	}
	public void update(String firstName,String lastName){
		this.firstName = firstName;
		this.lastName = lastName;
	}
	@PreUpdate
	public void preUpdate(){
		modifiedTime = new Date();
	}
	@PrePersist
	public void prePersist(){
		Date now = new Date();
		creationTime = now;
		modifiedTime = now;
	}
	@Override 
	public String toString(){
		return ToStringBuilder.reflectionToString(this);
	}
	
	
	/**
	 * A Builder class used to create new Person objects.
	 * @author Administrator
	 *
	 */
	public static class Builder{
		Person built;
		/**
		 * Create a new Builder instance
		 * @param firstName The first name of the create Person object.
		 * @param lastName 	The last name of the create Person object.
		 */
		
		Builder(String firstName,String lastName){
			built = new Person();
			built.firstName = firstName;
			built.lastName = lastName;
		}
		
		/**
		 * Builds the new Person object.
		 * @return	The created Person object.
		 */
		public Person build(){
			return built;
		}
	}
		/**
		 * This setter method should only be used by unit tests.
		 * @param id
		 */
		 protected void setId(Long id){
			 this.id = id;
		 }
	
}
