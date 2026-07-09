package com.demo.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homecontroller {

    @RequestMapping("/")
    public String root() {
        return "forward:/dashboard.jsp";
    }
    
    @RequestMapping("/dashboard")
    public String dashboard() {
        return "forward:/dashboard.jsp";
    }

    @RequestMapping("/home")
    public String home() {
        return "index";
    }

    @RequestMapping("/aboutus")
    public String aboutus() {
        return "aboutus";
    }

    @RequestMapping("/contactus")
    public String contactus() {
        return "contactus";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/product")
    public String product() {
        return "product"; // product.jsp
    }

    @RequestMapping("/product_details")
    public String freeTrial() {
        return "product_details";
    }

    @RequestMapping("/free-trial")
    public String freeTrialNew() {
        return "free_trails";
    }


    @RequestMapping("/payroll")
    public String payroll() {
        return "payroll";
    }

    @RequestMapping("/patient")
    public String patient() {
        return "patient";
    }

    @RequestMapping("/mrd")
    public String mrd() {
        return "mrd";
    }

    @RequestMapping("/dietary")
    public String dietary() {
        return "dietary";
    }

    @RequestMapping("/nabh")
    public String nabh() {
        return "nabh";
    }

    @RequestMapping("/crm")
    public String crm() {
        return "crm";
    }

    @RequestMapping("/bloodbank")
    public String bloodbank() {
        return "bloodbank";
    }

    @RequestMapping("/housekeeping")
    public String housekeeping() {
        return "housekeeping";
    }

    @RequestMapping("/master")
    public String master() {
        return "master";
    }

    @RequestMapping("/mis")
    public String mis() {
        return "mis";
    }
}
