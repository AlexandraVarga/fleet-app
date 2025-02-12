package com.fleetms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Profile;

@SpringBootApplication
@Profile({"dev","prod"})
public class FleetappApplication {
    public static void main(String[] args) {
        SpringApplication.run(FleetappApplication.class, args);
    }
}