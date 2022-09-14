package com.dmatyushin.tasks_web.restController;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class RESTController {

    @RequestMapping("/list")
    public String getAllTasks() {
        return "All tasks";
    }
}
