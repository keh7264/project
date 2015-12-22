package com.project.controller;

import java.util.HashMap;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.domain.EmployeeProjectVO;
import com.project.domain.EmployeeVO;
import com.project.service.EmployeeService;

@Controller
@RequestMapping("/employee/*")
public class EmployeeController {
	private static final Logger logger = LoggerFactory
			.getLogger(EmployeeController.class);

	@Inject
	private EmployeeService service;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(EmployeeVO employee, Model model) throws Exception {
		logger.info("register get...........................");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(EmployeeVO employee, RedirectAttributes rttr)
			throws Exception {
		logger.info("register post.............");

		service.register(employee);
		rttr.addFlashAttribute("result", "success");

		return "redirect:/employee/list";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		logger.info("show all list...........");
		model.addAttribute("list", service.listAll());
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("id") int id, Model model) throws Exception {
		logger.info("read..........");
		model.addAttribute(service.read(id));
		model.addAttribute("projectList", service.projectList(id));
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(@RequestParam("id") int id, Model model)
			throws Exception {
		model.addAttribute(service.read(id));

	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(EmployeeVO employee, RedirectAttributes rttr)
			throws Exception {
		logger.info("modify post................................");

		service.modify(employee);
		/*
		 * EmployeeProjectVO epVO = new EmployeeProjectVO();
		 * epVO.setEmployee_id(employee.getId()); epVO.setProject_id();
		 * service.addProject(epVO);
		 */
		rttr.addFlashAttribute("result", "success");

		return "redirect:/employee/read?id="+employee.getId();
	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(@RequestParam("id") int id, RedirectAttributes rttr)
			throws Exception {

		service.remove(id);

		rttr.addFlashAttribute("result", "success");
		return "redirect:/employee/list";
	}

	@RequestMapping(value = "/projectManagement/add", method = RequestMethod.POST)
	public String addProject(EmployeeProjectVO employeeProject,
			RedirectAttributes rttr) throws Exception {
		logger.info("add projects post................................");

		// service.removeProject(employeeProject.getEmployee_id());
		service.addProject(employeeProject);

		rttr.addFlashAttribute("result", "success");

		return "redirect:/employee/projectManagement/read?id="
				+ employeeProject.getEmployee_id();
	}

	@RequestMapping(value = "/projectManagement/read", method = RequestMethod.GET)
	public void manageProject(@RequestParam("id") int id, Model model)
			throws Exception {
		logger.info("add projects get................................");

		model.addAttribute(service.read(id));
		// model.addAttribute("projectList",service.projectList(id));
		model.addAttribute("projectListAll", service.projectList(id));
		model.addAttribute("otherProjects", service.otherProjects(id));

	}

	@RequestMapping(value = "/projectManagement/remove", method = RequestMethod.POST)
	public String removeProject(@RequestParam("employee_id") int employee_id,
			@RequestParam("project_id") int project_id, RedirectAttributes rttr)
			throws Exception {

		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("project_id", project_id);
		map.put("employee_id", employee_id);
		service.removeEmployeeFromProject(map);

		rttr.addFlashAttribute("result", "success");
		return "redirect:/employee/projectManagement/read?id=" + employee_id;
	}

}
