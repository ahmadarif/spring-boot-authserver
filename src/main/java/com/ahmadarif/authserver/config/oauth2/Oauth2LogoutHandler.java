package com.ahmadarif.authserver.config.oauth2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.provider.token.ConsumerTokenServices;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ARIF on 23-Feb-17.
 */
@Component
public class Oauth2LogoutHandler implements LogoutSuccessHandler {

    @Autowired
    private ConsumerTokenServices consumerTokenServices;

    public void onLogoutSuccess(HttpServletRequest req, HttpServletResponse res, Authentication a) throws IOException, ServletException {
        String token=req.getParameter("token");
        if(token != null){
            consumerTokenServices.revokeToken(token);
        }
        String redirect = req.getParameter("redirect");
        if(redirect != null){
            res.sendRedirect(redirect);
        }
    }
}