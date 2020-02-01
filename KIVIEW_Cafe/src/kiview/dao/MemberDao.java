package kiview.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import kiview.vo.member.MemberVo;

public class MemberDao extends SqlMapConfig {
	private String namespace = "member.";
	
	public MemberVo selectOne(String id, String pwd) {
		SqlSession session = null;
		MemberVo vo = null;
		
		session = getSqlSessionFactory().openSession(false);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id",id);
		map.put("pwd",pwd);
		
		vo = session.selectOne(namespace+"selectOne",map);
		System.out.println(vo);
		session.close();
		
		return vo;
		
	}
}
