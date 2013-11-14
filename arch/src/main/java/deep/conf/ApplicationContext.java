package deep.conf;
import com.jolbox.bonecp.BoneCPDataSource;
import org.hibernate.ejb.HibernatePersistence;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.*;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import javax.annotation.Resource;
import javax.sql.DataSource;
/**
 * An application context Java configuration class. The usage of Java configuration
 * require Spring Framework 3.0 or higher with following exceptions:
 * <ul>
 * 		<li>@EnableWebMvc annotation requires Spring Framework 3.1</li>
 * </ul>
 * @author Administrator
 *
 *	http://www.cnblogs.com/chenying99/p/3143516.html
 */
@Configuration
@ComponentScan(basePackages = {"deep.controller"})
@EnableWebMvc
@ImportResource("classpath:applicationContext.xml")
@PropertySource("classpath:application.properties")
public class ApplicationContext {
	private static final String VIEW_RESOLVER_PREFIX = "/WEB-INF/jsp";
	private static final String VIEW_RESOLVER_SUFFIX = ".jsp";
	private static final String PROPERTY_NAME_DATABASE_DRIVER = "db.driver";
	private static final String PROPERITY_NAME_DATABASE_URL = "db.url";
	private static final String PROPERITY_NAME_DATABASE_USERNAME = "db.username";
	private static final String PROPERITY_NAME_DATABASE_PASSWORD = "db.password";

	private static final String PROPERITY_NAME_HIBERNATE_DIALECT = "hibernate.dialect";
	private static final String PROPERITY_NAME_HIBERNATE_FORMAT_SQL = "hibernate.format_sql";
	private static final String PROPERITY_NAME_HIBERNATE_NAMING_STRATEGY = "hibernate.ejb.naming_strategy";
	private static final String PROPERITY_NAME_HIBERNATE_SHOW_SQL = "hibernate.show_sql";
	private static final String PROPERITY_NAME_ENTITYMANAGER_PACKAGES_TO_SCAN = "entitymanager.package.to.scan";
	private static final String PROPERITY_NAME_MESSAGESOURCE_BASENAME = "message.source.basename";
	private static final String PROPERITY_NAME_MESSAGESOURCE_USE_CODE_AS_DEFAULT_MESSAGE = "message.source.use.code.as.default.message";
	
	@Resource
	private Environment environment;
	
	@Bean
	public DataSource dataSource(){
		BoneCPDataSource dataSource = new BoneCPDataSource();
		dataSource.setDriverClass(environment.getRequiredProperty(PROPERTY_NAME_DATABASE_DRIVER));
		dataSource.setJdbcUrl(environment.getRequiredProperty(PROPERITY_NAME_DATABASE_URL));
		dataSource.setUser(environment.getRequiredProperty(PROPERITY_NAME_DATABASE_USERNAME));
		dataSource.setPassword(environment.getRequiredProperty(PROPERITY_NAME_DATABASE_PASSWORD));

		return dataSource;
	}
	
	@Bean
	public JpaTransactionManager transactionManager() throws ClassNotFoundException{
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactorBean().getObject());
		return transactionManager;
	}
	
	@Bean
	public LocalContainerEntityMangerFactoryBean entityManagerFactoryBean() throws ClassNotFoundException{
		LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
		entityManagerFactoryBean.setDataSource(dataSource());
		entityManagerFactoryBean.setpa
	}
}
