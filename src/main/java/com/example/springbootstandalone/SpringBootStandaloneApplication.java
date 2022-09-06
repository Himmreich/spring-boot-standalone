package com.example.springbootstandalone;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.time.Duration;

@SpringBootApplication
public class SpringBootStandaloneApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootStandaloneApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        for (int i = 0; i < 10; i++) {
            System.out.println("It works !!!!");
            Thread.sleep(Duration.ofSeconds(1).toMillis());
        }
    }
}
