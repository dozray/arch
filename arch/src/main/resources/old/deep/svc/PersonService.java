package deep.svc;
import java.util.List;



import deep.dto.PersonDTO;
import deep.dto.SearchDTO;
/**
 * Declares method used to obtain and modify person information.
 * 
 * @author Administrator
 *
 */
import deep.model.Person;;
public interface PersonService {
	/**
	 * Creates a new person
	 * @param created 	The information of the created person.
	 * @return	The created person.
	 */
	public Person create(PersonDTO created);
	
	/**
	 * Deletes a person.
	 * @param personId	The id of the deleted person.
	 * @return	The deleted person.
	 * @throws	PersonNotFoundException	if no person is found with the given id.
	 */
	public Person delete(Long personId);// throws PersonNotFoundException;
	/**
	 * Finds all persons.
	 * @return	A list of persons.
	 */
	public List<Person> findAll();
	/**
	 * Finds person by id.
	 * @param id	The id of the wanted person.
	 * @return	The found person. If on person is found, this method returns null.
	 */
	public Person findById(Long id);
	/**
	 * Updates the information of a person.
	 * 
	 * @param updated	The information of the update person.
	 * @return	The updated person.
	 * @throws	PersonNotFoundException if no person is found with given id.
	 */
	public Person update(PersonDTO updated);//throws PersonNotFoundException;
	/**
	 * Searchs persons by using the search criteria given as parameter.
	 * 
	 * @param searchCriteria
	 * @return	A list of persons matching with the search criteria. If no person is found,
	 * 			this method returns an empty list.
	 */
	public List<Person> search(SearchDTO searchCriteria);
	
}
