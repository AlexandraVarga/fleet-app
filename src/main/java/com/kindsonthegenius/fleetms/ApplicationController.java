package com.kindsonthegenius.fleetms;

import org.springframework.web.bind.annotation.RequestMapping;

public class ApplicationController {
    @RequestMapping("/index")
    public String hello () {
        return "index";
    }
}
