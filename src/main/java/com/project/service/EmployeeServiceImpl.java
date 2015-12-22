package com.project.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.domain.EmployeeProjectVO;
import com.project.domain.EmployeeVO;
import com.project.domain.ProjectVO;
import com.project.persistence.EmployeeDAO;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Inject
	private EmployeeDAO dao;

	@Override
	public void register(EmployeeVO employee) throws Exception {
		// TODO Auto-generated method stub
		dao.create(employee);
	}

	@Override
	public EmployeeVO read(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(id);
	}

	@Override
	public void modify(EmployeeVO employee) throws Exception {
		// TODO Auto-generated method stub
		dao.update(employee);

	}

	@Override
	public void remove(Integer id) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	@Override
	public List<EmployeeVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<ProjectVO> projectList(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return dao.projectList(id);
	}


	@Override
	public void addProject(EmployeeProjectVO employeeProject) throws Exception {
		// TODO Auto-generated method stub
		dao.addProject(employeeProject);
	}

	@Override
	public List<ProjectVO> otherProjects(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return dao.ohterProjects(id);
	}

	@Override
	public void removeEmployeeFromProject(HashMap<String, Integer> map) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteEmployeeProject(map);
	}




}
