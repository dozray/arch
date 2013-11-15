package deep.repo;
/**
 * 实现一个为Person 模型对象提供CRUD操作的repository
 * 是相当简略的，我们要做的就是继承自JpaRepository接口
 * 的接口，JpaRepository接口是向Repository接口规范扩展
 * 给你访问如下的方法，它们用于实现CRUD
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
	 * 注意：
	 * 1：方法的参数个数必须和@Query里面需要的参数个数一致
	 * 2：如果是like，后面的参数需要前面或者后面加“%”，比如下面都对：
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
