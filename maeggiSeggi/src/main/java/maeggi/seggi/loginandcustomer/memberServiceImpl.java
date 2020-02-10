package maeggi.seggi.loginandcustomer;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class memberServiceImpl implements memberService {
	@Autowired
	@Qualifier("memberDao")
	memberDAO dao;

	@Override
	public ArrayList<memberVO> getTreeEmpList(String deptno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean idCheck(String member_id) {
		// TODO Auto-generated method stub
		return dao.idCheck(member_id);
	}

	@Override
	public ArrayList<memberVO> getMemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public memberVO read(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<memberVO> search(String column, String search, String pass) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(memberVO user) {
		return dao.update(user);
	}

	@Override
	public memberVO login(memberVO loginUser) {
		return dao.login(loginUser);
	}

	@Override
	public int insert(memberVO user) {
		return dao.insert(user);
	}
	
}