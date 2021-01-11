package com.example.demo;


import io.dekorate.kubernetes.annotation.KubernetesApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@KubernetesApplication(replicas = 3)
@RestController
public class DemoController {

    @RequestMapping("/")
    public String hello() {
        return "Hello world";
    }
}