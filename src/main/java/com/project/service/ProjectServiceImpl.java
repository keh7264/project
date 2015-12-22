package com.project.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.domain.EmployeeProjectVO;
import com.project.domain.EmployeeVO;
import com.project.domain.ProjectVO;
import com.project.persistence.ProjectDAO;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Inject
	private ProjectDAO dao;
	
	@Override
	public void register(ProjectVO project) throws Exception {
		// TODO Auto-generated method stub
		dao.create(project);
	}

	@Override
	public ProjectVO read(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(id);
	}

	@Override
	public void modify(ProjectVO project) throws Exception {
		// TODO Auto-generated method stub
		dao.update(project);

	}

	@Override
	public void remove(Integer id) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	@Override
	public List<ProjectVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<EmployeeVO> employeeList(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return dao.employeeList(id);
	}

	@Override
	public void addEmployee(EmployeeProjectVO employeeProject) throws Exception {
		// TODO Auto-generated method stub
		dao.addEmployee(employeeProject);
	}

	@Override
	public List<EmployeeVO> otherEmployees(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return dao.ohterEmployees(id);
	}

	@Override
	public void removeEmployeeFromProject(HashMap<String, Integer> map)
			throws Exception {
		// TODO Auto-generated method stub
		dao.deleteEmployeeFromProject(map);
	}

}
