package com.placr.placr;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PlacrApplication {

	public static void main(String[] args) {
		System.out.println();
		System.out.println("Swagger docs available at: http://localhost:8080/swagger-ui/index.html");
		SpringApplication.run(PlacrApplication.class, args);
	}

}
