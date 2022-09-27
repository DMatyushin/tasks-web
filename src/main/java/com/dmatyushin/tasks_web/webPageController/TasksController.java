package com.dmatyushin.tasks_web.webPageController;

import com.dmatyushin.tasks_web.dbOperations.TaskItem;
import com.dmatyushin.tasks_web.dbOperations.TaskRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.Instant;

@Controller
public class TasksController {

    private final TaskRepository taskRepository;

    public TasksController (TaskRepository taskRepository){
        this.taskRepository = taskRepository;
    }

    @GetMapping("/new-task")
    public ModelAndView newTask() {
        return new ModelAndView("new-task", "command", new TaskItem());
    }

    @PostMapping("/createTask")
    public String createTask(TaskItem taskItem, ModelMap model) {

        taskItem.setCreateDate(Instant.now().getEpochSecond());
        TaskItem newTaskItem = this.taskRepository.save(taskItem);

        model.addAttribute("taskTitle", newTaskItem.getTaskTitle());
        model.addAttribute("taskDescription", newTaskItem.getTaskDescription());
        model.addAttribute("taskAuthor", newTaskItem.getTaskAuthor());
        model.addAttribute("taskExecutor", newTaskItem.getTaskExecutor());

        return "result";
    }
}
