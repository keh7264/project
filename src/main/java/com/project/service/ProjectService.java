package com.project.service;

import java.util.HashMap;
import java.util.List;

import com.project.domain.EmployeeProjectVO;
import com.project.domain.EmployeeVO;
import com.project.domain.ProjectVO;

public interface ProjectService {
	public void register(ProjectVO employee) throws Exception;

	public ProjectVO read(Integer id) throws Exception;

	public void modify(ProjectVO employee) throws Exception;

	public void remove(Integer id) throws Exception;

	public List<ProjectVO> listAll() throws Exception;

	public List<EmployeeVO> employeeList(Integer id) throws Exception;

	public void addEmployee(EmployeeProjectVO employeeProject) throws Exception;

	public List<EmployeeVO> otherEmployees(Integer id) throws Exception;

	public void removeEmployeeFromProject(HashMap<String, Integer> map)
			throws Exception;
}
