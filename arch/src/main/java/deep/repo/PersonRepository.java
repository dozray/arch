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

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import deep.model.*;
/**
 * Specifies methods used ot obtain and modify person related information
 * which is stored in the database.
 * @author dev
 *
 */
public interface PersonRepository extends JpaRepository<Person,Long> {
	/**
	 * Finds persons by using the last name as a search criteria.
	 * @param lastName
	 * @return	A list of persons which last name is an exact match with the given last name.
	 * 			If no persons is found, this method returns an empty list.
	 * ע�⣺
	 * 1�������Ĳ������������@Query������Ҫ�Ĳ�������һ��
	 * 2�������like������Ĳ�����Ҫǰ����ߺ���ӡ�%�����������涼�ԣ�
	 * @Query("select o from UserModel o where o.name like ?1%")
	 * public List<UserModel> findByUuidOrAge(String name);
	 * @Query("select o from UserModel o where o.name like %?1")
	 * public List<UserModel> findByUuidOrAge(String name);
	 * @Query("select o from UserModel o where o.name like %?1%")
	 * public List<UserModel> findByUuidOrAge(String name);
	 */
	@Query("SELECT p FROM Person p WHERE LOWER(p.lastName) = LOWER(:lastName)")
	public List<Person> find(@Param("lastName") String lastName);
}
