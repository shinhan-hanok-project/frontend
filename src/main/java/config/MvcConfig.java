package config;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.zaxxer.hikari.HikariDataSource;

@Configuration
@ComponentScan(basePackages = { "kr.co.hanok","util" })
@EnableWebMvc
@MapperScan(basePackages = { "kr.co.hanok" }, annotationClass = Mapper.class) // 인터페이스 스캔
@EnableTransactionManagement
public class MvcConfig implements WebMvcConfigurer {

//	// db.properties에 있는 속성
//	@Value("${db.driver}")
//	private String driver;
//	@Value("${db.url}")
//	private String url;
//	@Value("${db.username}")
//	private String username;
//	@Value("${db.password}")
//	private String password;
	
	// ViewResolver 설정(JSP 경로)
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		registry.jsp("/WEB-INF/views/", ".jsp");
	}

	// 정적페이지 처리(컨트롤러가 아니라 톰캣에서 처리하기 위해)
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

//	// HikariCP
//	@Bean
//	public HikariDataSource dataSource() {
//		HikariDataSource dataSource = new HikariDataSource();
//		dataSource.setDriverClassName(driver);
//		dataSource.setJdbcUrl(url);
//		dataSource.setUsername(username);
//		dataSource.setPassword(password);
//		return dataSource;
//	}
//
//	// MyBatis
//	@Bean
//	public SqlSessionFactory sqlSessionFactory() throws Exception {
//		SqlSessionFactoryBean ssf = new SqlSessionFactoryBean();
//		ssf.setDataSource(dataSource()); // CP 객체 주입
//
//		// xml 파일(Mapper파일) 위치(경로)
////			PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
////			ssf.setMapperLocations(resolver.getResources("classpath:/mapper/**/*.xml"));
//		return ssf.getObject();
//	}
}

