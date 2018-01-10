package com.yep.churchile.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class BaseController {
    private static final Logger LOGGER = LoggerFactory.getLogger(BaseController.class);
    @Autowired
    protected HttpServletRequest request;

    protected HttpSession getSession() {
        return request.getSession();
    }
}

