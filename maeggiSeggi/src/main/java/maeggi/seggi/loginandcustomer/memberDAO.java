package maeggi.seggi.loginandcustomer;

import java.util.ArrayList;

public interface memberDAO {
	ArrayList<memberVO> getTreeEmpList(String deptno);
	int insert(memberVO user);
	ArrayList<memberVO> getMemberList();
	int delete(String id);
	memberVO read(String id);
	ArrayList<memberVO> search(String column, String search,String pass);
	int update(memberVO user);
	memberVO login(memberVO loginUser);
	boolean idCheck(String id);
	memberVO findById(String id);
}
