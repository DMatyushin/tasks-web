package com.dmatyushin.tasks_web.webPageController;

import com.dmatyushin.tasks_web.authService.Student;
import com.dmatyushin.tasks_web.dbOperations.TaskItem;
import com.dmatyushin.tasks_web.dbOperations.TaskRepository;
import com.dmatyushin.tasks_web.dbOperations.projects.ProjectMembersRepsitory;
import com.dmatyushin.tasks_web.dbOperations.projects.ProjectRepository;
import com.dmatyushin.tasks_web.dbOperations.users.User;
import com.dmatyushin.tasks_web.dbOperations.users.UserRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    private final TaskRepository taskRepository;
    private final UserRepository userRepository;
    private final ProjectRepository projectRepository;
    private final ProjectMembersRepsitory projectMembersRepsitory;

    public MainController(TaskRepository taskRepository,
                          UserRepository userRepository,
                          ProjectRepository projectRepository,
                          ProjectMembersRepsitory projectMembersRepsitory) {

        this.taskRepository = taskRepository;
        this.userRepository = userRepository;
        this.projectRepository = projectRepository;
        this.projectMembersRepsitory = projectMembersRepsitory;
    }


    @Value("${name}")
    private String userName;

    @Value("${role}")
    private String userRole;

//    @RequestMapping("/")
//    public String welcome(ModelMap model) {
//        String[] name = new String[5];
//        //model.put("message", "");
//        model.addAttribute("userName", this.userName);
//        model.addAttribute("userRole", this.userRole);
//
//        for (int i = 0; i < 5; i++) {
//            name[i] = String.format("%s %s", this.userName, i * 103);
//        }
//
//        model.addAttribute("users", name);
//        return "index";
//    }

    @RequestMapping("/")
    public String taskList(ModelMap model) {
        //Iterable<TaskItem> tasks = this.taskRepository.findAll();
        model.addAttribute("tasks", this.taskRepository.findAll());
        return "tasks";
    }

//    @GetMapping("/new-task")
//    public ModelAndView newTask() {
//        return new ModelAndView("new-task", "command", new TaskItem());
//    }

//    @PostMapping("/createTask")
//    public String createTask(TaskItem taskItem, ModelMap model) {
//
//        TaskItem newTaskItem = this.taskRepository.save(taskItem);
//
//        model.addAttribute("taskTitle", newTaskItem.getTaskTitle());
//        model.addAttribute("taskDescription", newTaskItem.getTaskDescription());
//        model.addAttribute("taskAuthor", newTaskItem.getTaskAuthor());
//        model.addAttribute("taskExecutor", newTaskItem.getTaskExecutor());
//
//        return "result";
//    }

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

    @PostMapping("/tst")
    public void createTest(@RequestBody User user) {

        User newUser = this.userRepository.save(user);
    }

}