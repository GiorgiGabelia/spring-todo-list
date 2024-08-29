package com.myGroup.myFirstWebApp.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@SessionAttributes("username")
public class WelcomeController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String welcomePage(ModelMap modelMap) {
        modelMap.put("username", "gio");
        return "welcome-page";
    }
}
