package com.emp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.emp.dao.EmployeeDao;
import com.emp.model.Employee;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeDao dao;

	@RequestMapping("/index")
	public String home(Model model) {
		List<Employee> list = dao.getEmployees();
		model.addAttribute("list", list);
		return "index";
	}

	@RequestMapping("/empform")
	public String showForm(Model model) {
		model.addAttribute("employee", new Employee());
		return "add_emp";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addEmp(@ModelAttribute("employee") Employee emp) {
		dao.save(emp);
		return "redirect:/index";
	}

}
