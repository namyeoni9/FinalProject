package kiview.vo.member;

public class MemberVo {
	private int member_no;
	private String id;
	private String pwd;
	private String name;
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "MemberVo [member_no=" + member_no + ", id=" + id + ", pwd=" + pwd + ", name=" + name + "]";
	}
	public MemberVo(int member_no, String id, String pwd, String name) {
		super();
		this.member_no = member_no;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
	}
	
	

}
