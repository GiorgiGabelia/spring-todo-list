package com.myGroup.myFirstWebApp.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("username")
public class LoginController {
    @Autowired
    private AuthenticationService authenticationService;


    @RequestMapping(value = {"/", "login"}, method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }

    @RequestMapping(value = {"/", "login"}, method = RequestMethod.POST)
    public String signIn(@RequestParam String username, @RequestParam String password, ModelMap modelMap) {
        if (authenticationService.authenticate(username, password)) {
            modelMap.put("username", username);
            return "redirect:todos-list";
        }
        modelMap.put("authErrorMessage", "Invalid username or password");
        return "login";
    }

}
