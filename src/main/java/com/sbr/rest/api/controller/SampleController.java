package com.sbr.rest.api.controller;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "api/v1/samples", produces = MediaType.APPLICATION_JSON_VALUE)
public class SampleController {

    @GetMapping("/{name}")
    public ResponseEntity<String> sayHello(@PathVariable final String name){
        return ResponseEntity.ok("Welcome to first aws service : "+name);
    }
}
