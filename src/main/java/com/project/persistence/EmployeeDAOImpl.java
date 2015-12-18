package com.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.domain.EmployeeVO;
import com.project.domain.ProjectVO;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.project.mapper.EmployeeMapper";

	@Override
	public void create(EmployeeVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);

	}

	@Override
	public EmployeeVO read(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", id);
	}

	@Override
	public void update(EmployeeVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);

	}

	@Override
	public void delete(Integer id) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", id);
	}

	@Override
	public List<EmployeeVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<ProjectVO> projectList(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".projectList", id);
	}

}
