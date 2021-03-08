package com.spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.*;
import net.jntoo.db.Query;

/**
 * 首页控制器
 */
@Controller
public class IndexController extends BaseController{

    // 首页
    @RequestMapping(value = {"/" , "index"})
    public String Index()
    {
            ArrayList<HashMap> wupinxinxilist1 = Query.make("wupinxinxi").where("issh", "是").limit(8).order("id desc").select();
            assign("wupinxinxilist1" , wupinxinxilist1);
            if(isAjax())
        {
            return json();
        }
        return "index";
        
    }



}
