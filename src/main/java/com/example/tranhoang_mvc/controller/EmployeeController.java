package com.example.tranhoang_mvc.controller;

import com.example.tranhoang_mvc.entity.Employee;
import com.example.tranhoang_mvc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/employees")
public class EmployeeController {
    private final EmployeeService employeeService;

    @Autowired
    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/list")
    public String getAllEmployees(ModelMap modelMap) {
        List<Employee> employees = employeeService.findAllEmployees();
        modelMap.addAttribute("employees", employees);
        System.out.println("Number of employees: " + employees.size());
        return "employees";
    }

    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "add-employee";
    }

    @PostMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.createEmployee(employee);
        return "redirect:/employees/list";
    }

    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("employeeId") Long id, Model model) {
        Optional<Employee> employee = employeeService.findEmployeeById(id);
        if (employee.isPresent()) {
            model.addAttribute("employee", employee.get());
        } else {
            model.addAttribute("employee", new Employee());
        }
        return "add-employee";
    }
}

