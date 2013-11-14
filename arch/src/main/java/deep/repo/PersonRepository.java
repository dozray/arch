package deep.repo;
/**
 * ʵ��һ��ΪPerson ģ�Ͷ����ṩCRUD������repository
 * ���൱���Եģ�����Ҫ���ľ��Ǽ̳���JpaRepository�ӿ�
 * �Ľӿڣ�JpaRepository�ӿ�����Repository�ӿڹ淶��չ
 * ����������µķ�������������ʵ��CRUD
 * 
 * delete(T entity) which deletes the entity given as a parameter.
 * findAll()	which returns a list of entities.
 * findOne(ID id)	which returns the entity using the id given a parameter as a search criteria.
 * save(T entity) which saves the entity given as parameter.
 * 
 * @author Administrator
 *
 */

import org.springframework.data.jpa.repository.JpaRepository;
import deep.model.*;
public interface PersonRepository extends JpaRepository<Person,Long> {

}
