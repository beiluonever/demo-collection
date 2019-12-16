package net.pyma.demo.flowable.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

/**
 * <p>
 * demo-collection
 * hello
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2019-12-13 16:05
 **/
@RestController
public class HelloController {

    @GetMapping("/hello")
    public String hello(Principal principal) {
        return "Hello " + principal.getName() + "!";
    }
}
