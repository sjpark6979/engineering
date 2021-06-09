package controller.employees;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.EmployeeCommand;

@Controller
@RequestMapping("emp")
public class EmployeeController {
	@RequestMapping("empList")
	public String empList() {
		return "employee/empList";
	}
	@RequestMapping("empReget")
	public String empReget() {
		return "employee/employeeForm";
	}
	@RequestMapping(value="empJoin", method=RequestMethod.POST)
	public String  empJoin(EmployeeCommand employeeCommand) {
		
		System.out.println(employeeCommand.getEmpId());
		
		return "redirect:empList";
	}
}
