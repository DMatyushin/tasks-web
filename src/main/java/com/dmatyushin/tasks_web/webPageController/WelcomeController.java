package com.dmatyushin.tasks_web.webPageController;

import java.util.Map;

import com.dmatyushin.tasks_web.authService.Student;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {

    // inject via application.properties
    //@Value("${welcome.message:test}")
    //private String message = "Hello World";

    @Value("${name}")
    private String userName;

    @Value("${role}")
    private String userRole;

    @RequestMapping("/")
    public String welcome(ModelMap model) {
        //model.put("message", "");
        model.addAttribute("userName", this.userName);
        model.addAttribute("userRole", this.userRole);
        return "index";
    }

    @RequestMapping(value = "/student", method = RequestMethod.GET)
    public ModelAndView student() {
        return new ModelAndView("student", "command", new Student());
    }

    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute("SpringWeb") Student student,
                             ModelMap model) {
        model.addAttribute("name", student.getName());
        model.addAttribute("age", student.getAge());
        model.addAttribute("id", student.getId());

        return "result";
    }

}