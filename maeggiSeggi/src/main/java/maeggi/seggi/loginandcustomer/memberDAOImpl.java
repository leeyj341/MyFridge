package maeggi.seggi.loginandcustomer;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class memberDAOImpl implements memberDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public ArrayList<memberVO> getTreeEmpList(String deptno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(memberVO user) {
		return sqlSession.insert("maeggi.seggi.loginandcustomer.register", user);
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public memberVO login(memberVO loginUser) {
		return sqlSession.selectOne("maeggi.seggi.loginandcustomer.login", loginUser);
	}

	public boolean idCheck(String member_id) {
		boolean result = false;
		memberVO user = sqlSession.selectOne("maeggi.seggi.loginandcustomer.idCheck", member_id);
		if(user!=null) {
			result = true;
		}
		return result;
	}

	@Override
	public memberVO findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
