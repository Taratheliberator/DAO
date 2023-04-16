package org.example.controller;

import org.example.repository.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class Controller {
    Repository repository;

    public Controller(Repository repository) {
        this.repository = repository;
    }

    @GetMapping("/products/fetch-product")
    public String fetchProduct(String name) {
        return repository.getProductName(name);
    }
}
