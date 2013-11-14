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

import org.springframework.data.jpa.repository.JpaRepository;
import deep.model.*;
public interface PersonRepository extends JpaRepository<Person,Long> {

}
