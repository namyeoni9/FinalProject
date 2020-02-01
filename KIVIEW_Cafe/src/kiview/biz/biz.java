package kiview.biz;

import kiview.dao.MemberDao;
import kiview.vo.member.MemberVo;

public class biz {
	MemberDao md = new MemberDao();
	
	public MemberVo selectOne(String id, String pwd) {
		
		return md.selectOne(id, pwd);
	}
}
