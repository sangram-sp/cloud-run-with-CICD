package com.gcp.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CloudRunController {
	
	@GetMapping("/home")
	public ResponseEntity<?> testService(){
		return new ResponseEntity<> ("Cloud-Run Service is Active", HttpStatus.OK);
	}

}
