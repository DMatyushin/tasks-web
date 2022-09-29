package com.dmatyushin.tasks_web.webPageController;

import com.dmatyushin.tasks_web.dbOperations.TaskItem;
import com.dmatyushin.tasks_web.dbOperations.TaskRepository;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.time.Instant;
import java.util.Optional;

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

        model.addAttribute("result", "Задача создана");

        return "result";
    }

    @GetMapping("/task/{id}")
    public String showTask(@PathVariable("id") Integer id, ModelMap model) {

        if(!taskRepository.findById(id).isPresent()) {
            model.addAttribute("result", "Задача не найдена");
            return "result";
        }

        TaskItem t = this.taskRepository.findById(id).orElse(new TaskItem());
        model.addAttribute("id", t.getId());
        model.addAttribute("title", t.getTaskTitle());
        model.addAttribute("author", t.getTaskAuthor());
        model.addAttribute("executor", t.getTaskExecutor());
        model.addAttribute("description", t.getTaskDescription());
        //return new ModelAndView("task-item", "command", t);

        return "task-item";
    }

    @RequestMapping(value = "/modifyTask", method = RequestMethod.POST, params = "submit")
    public String updateTask(TaskItem t, ModelMap model) {

        this.taskRepository.save(t);

        model.addAttribute("result", "Задача обновлена");

        return "result";
    }

    @RequestMapping(value = "/modifyTask", method = RequestMethod.POST, params = "delete")
    public String deleteTask(TaskItem t, ModelMap model) {

        this.taskRepository.deleteById(t.getId());

        model.addAttribute("result", "Задача удалена");
        return "result";
    }

}
