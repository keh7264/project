package com.project.persistence;

import java.util.HashMap;
import java.util.List;

import com.project.domain.EmployeeProjectVO;
import com.project.domain.EmployeeVO;
import com.project.domain.ProjectVO;

public interface ProjectDAO {

	public void create(ProjectVO vo) throws Exception;

	public ProjectVO read(Integer id) throws Exception;
	
	public void update(ProjectVO vo) throws Exception;
	
	public void delete(Integer id) throws Exception;
	
	public List<ProjectVO> listAll() throws Exception;
	
	public List<EmployeeVO> employeeList(Integer id) throws Exception;

	public void addEmployee(EmployeeProjectVO vo) throws Exception;
	
	public List<EmployeeVO> ohterEmployees(Integer id) throws Exception;

	public void deleteEmployeeFromProject(HashMap<String, Integer> map) throws Exception;

}
