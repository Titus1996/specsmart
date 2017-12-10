package com.specszone_mart.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class PageController {
@RequestMapping(value={"/","/home","/index"})
public String getdefaultpage()
{
return "index";	
}

@RequestMapping(value={"/support"})
public String support()
{
return "support";	
}

@RequestMapping(value={"/cart"})
public String mycart()
{
return "mycart";	
}

@RequestMapping(value={"/shop"})
public String shop()
{
return "shop";	
}

@RequestMapping(value={"/signin"})
public String signin()
{
return "signin";	
}
}
