package maeggi.seggi.loginandcustomer;

import java.util.ArrayList;

public interface memberService {
	ArrayList<memberVO> getTreeEmpList(String deptno);
	//int insert(memberVO user,MultipartFile file,String realpath,String filename);
	int insert(memberVO user);
	public boolean idCheck(String id);
	ArrayList<memberVO> getMemberList();
	int delete(String id);
	memberVO read(String id);
	ArrayList<memberVO> search(String column, String search
					,String pass);
	int update(memberVO user);
	memberVO login(memberVO loginUser);
}
