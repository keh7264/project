package com.project.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.json.MappingJacksonJsonView;

import com.project.domain.EmployeeVO;
import com.project.domain.ProjectVO;
import com.project.service.EmployeeService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/api")
public class APIController {

	private static final Logger logger = LoggerFactory
			.getLogger(APIController.class);
	
	@Autowired
	EmployeeService employeeService;

	@Autowired
	MappingJacksonJsonView jsonView;

	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 * @throws Exception
	 */
	@RequestMapping(value = "/employees", method = RequestMethod.GET, produces = "application/json; charset=utf8")
	public @ResponseBody
	List<EmployeeVO> listAllEmployees() throws Exception {
		List<EmployeeVO> employees = employeeService.listAll();
		
		logger.info(employees.toString());
		return employees;
	}

	@RequestMapping(value = "/employee/{id}", method = RequestMethod.GET, produces = "application/json; charset=utf8")
	public @ResponseBody
	EmployeeVO Employee(@PathVariable Integer id) throws Exception {
		EmployeeVO employee = employeeService.read(id);
		logger.info(employee.toString());
		return employee;
	}

	@RequestMapping(value = "/employee/{id}/projects", method = RequestMethod.GET, produces = "application/json; charset=utf8")
	public @ResponseBody
	List<ProjectVO> projects(@PathVariable Integer id) throws Exception {
		List<ProjectVO> projects = employeeService.projectList(id);
		logger.info(projects.toString());
		return projects;
	}
}
