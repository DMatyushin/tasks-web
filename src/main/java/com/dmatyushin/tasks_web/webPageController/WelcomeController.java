package com.dmatyushin.tasks_web.webPageController;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

    // inject via application.properties
    //@Value("${welcome.message:test}")
    //private String message = "Hello World";

    @RequestMapping("/")
    public String welcome(Map<String, Object> model) {
        model.put("message", "Авторизация:");
        return "index";
    }

    @PostMapping("/auth/{login}")
    public String testAuth(@PathVariable("login") String login, Map<String, Object> model) {
        System.out.println(login);
        model.put("login", login);
        return "welcome";
    }

}