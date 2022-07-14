package ru.jchopped.light;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class GreetingController {

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        model.put("Username", "unknown");
        return "greeting";
    }

    @PostMapping("/")
    public String addName(@RequestParam(value = "username", defaultValue = "unknown") String username, Map<String, Object> model) {
        model.put("Username", username);
        return "greeting";
    }

}
