package deep.svc;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import deep.dto.PersonDTO;
import deep.repo.PersonRepository;
import deep.model.Person;

import javax.annotation.Resource;

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

	//@Transactional(roolbackFor = PersonNotFoundException.class)
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
		return null;
	}

	@Override
	public Person findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Person update(PersonDTO updated) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
