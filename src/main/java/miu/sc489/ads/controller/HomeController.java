package miu.sc489.ads.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class HomeController {

    @GetMapping("/users")
    public Map<String, String> getlAll(){
        Map<String, String> map = new HashMap<>();
        map.put("name1", "Mario");
        map.put("name2", "Paul");
        map.put("name3", "Maria");

        return map;
    }
}
