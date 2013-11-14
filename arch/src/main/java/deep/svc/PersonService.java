package deep.svc;
import java.util.List;

/**
 * Declares method used to obtain and modify person information.
 * 
 * @author Administrator
 *
 */
import deep.vo.Person;;
public interface PersonService {
	/**
	 * Creates a new person
	 * @param created 	The information of the created person.
	 * @return	The created person.
	 */
	public Person create(PersonDTO created);
	
	public Person delete(Long personId);
	public List<Person> findAll();
	public Person findById(Long id);
	public Person update(PersonDTO updated);//throws PersonNotFoundException;
	
	
}
