package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.jdbc.Work;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import freemarker.core.ReturnInstruction.Return;
/**
 * 1、需要Spring注入sessionFactory
 * 2、需要Spring声明式事物
 * @author 王世军
 *
 */
@Repository
public class DaoSupport {
//	public DaoSupport(SessionFactory sessionFactory){
//		this.sessionFactory=sessionFactory;
//	}
	@Autowired
    private SessionFactory sessionFactory;

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    protected void save(Object obj) {
        getSession().save(obj);
    }

    protected <T> T get(Class<T> clazz, int id) {
        return (T) getSession().get(clazz, id);
    }

    protected <T> List<T> findByProperty(Class<T> clazz, String property, Object value) {
        return getSession().createCriteria(clazz).add(Restrictions.eq(property, value)).list();
    }

    protected <T> List<T> findAll(Class<T> clazz) {
        return getSession().createCriteria(clazz).list();
    }

    protected void update(Object obj) {
        getSession().update(obj);
    }

    protected void delete(Class clazz, int id) {
        getSession().delete(get(clazz, id));
    }

    protected void delete(Object obj) {
        getSession().delete(obj);
    }
    protected <T> List<T> findBySql(final String sql,final Object[] param) {
    	List<T> result=null;
//    	 getSession().doWork(
//			  new Work() {  
//				  PreparedStatement pstm=null;
//			    public void execute(Connection connection) {  
//			    	try {
//			    		pstm=connection.prepareStatement(sql);
//						if(param!=null){
//							for (int i = 0; i < param.length; i++) {
//								pstm.setObject(i+1, param[i]);
//							}
//						}
//					} catch (SQLException e) {
//						e.printStackTrace();
//					}
//			    }
//			  }
//			  
//		);
    	 
    	 return result;
    }
    
    
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	  
}