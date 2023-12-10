package com.kindsonthegenius.fleetms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.kindsonthegenius.fleetms")
public class FleetappApplication {
	public static void main(String[] args) {
		SpringApplication.run(FleetappApplication.class, args);
	}
}
