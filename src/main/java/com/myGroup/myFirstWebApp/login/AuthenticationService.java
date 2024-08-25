package com.myGroup.myFirstWebApp.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authenticate(String username, String password) {
        boolean isValidUsername = username.equalsIgnoreCase("givi") || username.equalsIgnoreCase("gio");
        boolean isValidPassword = password.equalsIgnoreCase("givi");
        return isValidPassword && isValidUsername;
    }

}
