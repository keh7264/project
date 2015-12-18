package com.project.service;

import java.util.List;

import com.project.domain.EmployeeVO;
import com.project.domain.ProjectVO;

public interface EmployeeService {
	public void register(EmployeeVO employee) throws Exception;

	public EmployeeVO read(Integer id) throws Exception;

	public void modify(EmployeeVO employee) throws Exception;

	public void remove(Integer id) throws Exception;

	public List<EmployeeVO> listAll() throws Exception;
	
	public List<ProjectVO> projectList(Integer id) throws Exception;

}
