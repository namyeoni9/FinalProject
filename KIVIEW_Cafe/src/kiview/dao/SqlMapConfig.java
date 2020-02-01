package kiview.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	
	private SqlSessionFactory SqlSessionFactory;
	
	public SqlSessionFactory getSqlSessionFactory() {
		
		String resource = "kiview/db/Config.xml";
		
		try {
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		
		} catch(IOException e) {
			e.printStackTrace();
		}
		return SqlSessionFactory;
	}

}
