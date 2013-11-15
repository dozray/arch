package deep.svc;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import deep.dto.PersonDTO;
import deep.dto.SearchDTO;
import deep.dto.SearchType;
import deep.repo.PersonRepository;
import deep.model.Person;

import javax.annotation.Resource;
/**
 * This implementation of the PersonService interface communicates with
 * the database by using a Spring Data JPA repository.
 * @author dev
 *
 */
@Service
public class RepositoryPersonService implements PersonService{
	private static final Logger LOGGER = LoggerFactory.getLogger(RepositoryPersonService.class);
	
	@Resource 
	private PersonRepository personRepository;
	
	
	@Transactional
	@Override
	public Person create(PersonDTO created) {
		// TODO Auto-generated method stub
		LOGGER.debug("Creating a new person with information:"+created);
		Person person = Person.getBuilder(created.getFistName(), created.getLastName()).build();
		return personRepository.save(person);
	}

	//@Transactional(rollbackFor = PersonNotFoundException.class)
	@Override
	public Person delete(Long personId) {
		// TODO Auto-generated method stub
		LOGGER.debug("Deleting person with id: "+personId);
		Person deleted = personRepository.findOne(personId);
		if(deleted == null){
			LOGGER.debug("No person found with id: "+personId);
			//throw new PersonNotFoundException();
		}
		personRepository.delete(deleted);
		return deleted;
	}

	@Transactional(readOnly = true)
	@Override
	public List<Person> findAll() {
		// TODO Auto-generated method stub
		LOGGER.debug("Finding all persons");
		return personRepository.findAll();
	}

	@Transactional(readOnly = true)
	@Override
	public Person findById(Long id) {
		// TODO Auto-generated method stub
		LOGGER.debug("Finding person by id: "+id);
		return personRepository.findOne(id);
	}

	//@Transactional(rollbackFor = PersonNotFoundException.class)
	@Override
	public Person update(PersonDTO updated)/* throws PersonNotFoundException */ {
		// TODO Auto-generated method stub
		LOGGER.debug("Updating person with information: " +updated);
		Person person = personRepository.findOne(updated.getId());
		
		if(person == null){
			LOGGER.debug("No person found with id: "+updated.getId());
			//throw new PersonNotFoundException();
		}
		person.update(updated.getFistName(),updated.getLastName());
		return person ;
	}
	/**
	 * This setter method should be used only by unit tests.
	 * @param personRepository
	 */
	protected void setPersonRepository(PersonRepository personRepository){
		this.personRepository = personRepository;
	}

	@Transactional(readOnly = true)
	@Override
	public List<Person> search(SearchDTO searchCriteria) {
		// TODO Auto-generated method stub

		LOGGER.debug("Searching persons with search criteria: "+searchCriteria);
		
		String searchTerm = searchCriteria.getSearchTerm();
		SearchType searchType = searchCriteria.getSearchType();
		if(searchType == null){
			throw new IllegalArgumentException();
		}
		return findPersonBySearchType(searchTerm,searchType);
	}
	private List<Person> findPersonBySearchType(String searchTerm,SearchType searchType){
		List<Person> persons;
		if(searchType == SearchType.METHOD_NAME){
			LOGGER.debug("Searching persons by using method name query creation.");
			persons = personRepository.findByLastName(searchTerm);
		}
		else if (searchType == SearchType.NAMED_QUERY){
			LOGGER.debug("Searching persons by using named query");
			persons = personRepository.findByName(searchTerm);
		}
		else{
			LOGGER.debug("Searching persons by using query qnnotation");
			persons = personRepository.find(searchTerm);
		}
		return persons;
	}
}
