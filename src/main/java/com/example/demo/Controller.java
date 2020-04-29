package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicLong;

/**
 * Created by pleshkov on 21.03.2020
 */
@RestController
public class Controller {

    private final AtomicLong counter = new AtomicLong();

    @GetMapping("/")
    public String index() {
        return "Ololo";
    }

    @GetMapping("/request")
    public Long getCounter(){
        return counter.incrementAndGet();
    }

}

