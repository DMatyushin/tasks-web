package com.dmatyushin.tasks_web.restController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/users")
    public void userList() {
    }

    @RequestMapping("/projects")
    public void projectList() {
    }

    @RequestMapping("/tasks-all")
    public void allTaskList() {
    }

    @RequestMapping("/new-user")
    public void newUser() {
    }

    @RequestMapping("/mod-user")
    public void modUser() {
    }

    @RequestMapping("/del-user")
    public void delUser() {

    }

    @RequestMapping("/add-project")
    public void addProject() {

    }

    @RequestMapping("/mod-project")
    public void modProject() {}

    @RequestMapping("/del-project")
    public void delProject() {}

}
