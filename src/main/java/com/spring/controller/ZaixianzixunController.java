package com.spring.controller;

import com.spring.dao.ZaixianzixunMapper;
import com.spring.entity.Zaixianzixun;
import com.spring.service.ZaixianzixunService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;
import java.util.*;
import dao.CommDAO;

import com.spring.entity.Wupinxinxi;
import com.spring.service.WupinxinxiService;

/**
 * 在线咨询 */
@Controller
public class ZaixianzixunController extends BaseController
{
    @Autowired
    private ZaixianzixunMapper dao;
    @Autowired
    private ZaixianzixunService service;

    @Autowired
    private WupinxinxiService serviceRead;
    /**
     *  后台列表页
     *
     */
    @RequestMapping("/zaixianzixun_list")
    public String list()
    {

        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }

        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc
        int pagesize = Request.getInt("pagesize" , 12); // 获取前台一页多少行数据
        Example example = new Example(Zaixianzixun.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();          // 创建一个扩展搜索条件类
        String where = " 1=1 ";   // 创建初始条件为：1=1
        where += getWhere();      // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where);   // 将条件写进上面的扩展条件类中
        if(sort.equals("desc")){        // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc();  // 把sql 语句设置成倒序
        }else{
            example.orderBy(order).asc();   // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));  // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1 , page);  // 取两个数的最大值，防止page 小于1
        List<Zaixianzixun> list = service.selectPageExample(example , page , pagesize);   // 获取当前页的行数

        assign("wupinfenleiList" , new CommDAO().select("SELECT * FROM wupinfenlei ORDER BY id desc"));

        // 将列表写给界面使用
        assign("totalCount" , request.getAttribute("totalCount"));
        assign("list" , list);
        assign("orderby" , order);  // 把当前排序结果写进前台
        assign("sort" , sort);      // 把当前排序结果写进前台
        return json();   // 将数据写给前端
    }

    public String getWhere()
    {
        _var = new LinkedHashMap(); // 重置数据
        String where = " ";
        // 判断URL 参数wupinxinxiid是否大于0
        if( Request.getInt("wupinxinxiid") > 0 ) {
            // 大于0 则写入条件
            where += " AND wupinxinxiid='"+Request.getInt("wupinxinxiid")+"' ";
        }
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
            if(!Request.get("wupinbianhao").equals("")) {
            where += " AND wupinbianhao LIKE '%"+Request.get("wupinbianhao")+"%' ";
        }
                if(!Request.get("fenlei").equals("")) {
            where += " AND fenlei ='"+Request.get("fenlei")+"' ";
        }
                if(!Request.get("wupinmingcheng").equals("")) {
            where += " AND wupinmingcheng LIKE '%"+Request.get("wupinmingcheng")+"%' ";
        }
            return where;
    }

    /**
     * 卖家列表
     */
    @RequestMapping("/zaixianzixun_list_maijia")
    public String listmaijia()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }
        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc
        int pagesize = Request.getInt("pagesize" , 12); // 获取前台一页多少行数据

        
        Example example = new Example(Zaixianzixun.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：卖家=当前登录用户
        String where = " maijia='"+request.getSession().getAttribute("username")+"' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if(sort.equals("desc")){        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        }else{
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1 , page); // 注释同list
        List<Zaixianzixun> list = service.selectPageExample(example , page , pagesize);
        assign("wupinfenleiList" , new CommDAO().select("SELECT * FROM wupinfenlei ORDER BY id desc"));        assign("totalCount" , request.getAttribute("totalCount"));
        assign("list" , list);
        assign("orderby" , order);
        assign("sort" , sort);
        return json();   // 将数据写给前端
    }
    /**
     * 咨询人列表
     */
    @RequestMapping("/zaixianzixun_list_zixunren")
    public String listzixunren()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }
        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc
        int pagesize = Request.getInt("pagesize" , 12); // 获取前台一页多少行数据

        
        Example example = new Example(Zaixianzixun.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria();           // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：咨询人=当前登录用户
        String where = " zixunren='"+request.getSession().getAttribute("username")+"' ";
        where += getWhere();

        criteria.andCondition(where);   // 将条件写入
        if(sort.equals("desc")){        // 注释同list
            example.orderBy(order).desc(); // 注释同list
        }else{
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1 , page); // 注释同list
        List<Zaixianzixun> list = service.selectPageExample(example , page , pagesize);
        assign("wupinfenleiList" , new CommDAO().select("SELECT * FROM wupinfenlei ORDER BY id desc"));
        assign("totalCount" , request.getAttribute("totalCount"));
        assign("list" , list);
        assign("orderby" , order);
        assign("sort" , sort);
        return json();   // 将数据写给前端
    }




    @RequestMapping("/zaixianzixun_add")
    public String add()
    {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");  // 根据id 获取 物品信息模块中的数据
        Wupinxinxi readMap = serviceRead.find(id);
        // 将数据行写入给前台页面
        assign("readMap" , readMap);
        return json();   // 将数据写给前端
    }

    @RequestMapping("/zaixianzixun_updt")
    public String updt()
    {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台页面
        Zaixianzixun mmm = service.find(id);
        assign("mmm" , mmm);
        assign("updtself" , 0);
        return json();   // 将数据写给前端
    }
    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/zaixianzixuninsert")
    public String insert()
    {
        _var = new LinkedHashMap(); // 重置数据
        String tmp="";
        Zaixianzixun post = new Zaixianzixun();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setWupinbianhao(Request.get("wupinbianhao"));
        post.setFenlei(Request.get("fenlei"));
        post.setWupinmingcheng(Request.get("wupinmingcheng"));
        post.setWupintupian(Request.get("wupintupian"));
        post.setWupinjiage(Request.getDouble("wupinjiage"));
        post.setMaijia(Request.get("maijia"));
        post.setZixunneirong(Request.get("zixunneirong"));
        post.setMaijiahuifu(Request.get("maijiahuifu"));
        post.setZixunren(Request.get("zixunren"));
        post.setWupinxinxiid(Request.getInt("wupinxinxiid"));
        post.setAddtime(Info.getDateStr()); // 设置添加时间
        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功" , Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
    * 更新内容
    * @return
    */
    @RequestMapping("/zaixianzixunupdate")
    public String update()
    {
        _var = new LinkedHashMap(); // 重置数据
        // 创建实体类
        Zaixianzixun post = new Zaixianzixun();
        // 将前台表单数据填充到实体类
        if(!Request.get("wupinbianhao").equals(""))
        post.setWupinbianhao(Request.get("wupinbianhao"));
        if(!Request.get("fenlei").equals(""))
        post.setFenlei(Request.get("fenlei"));
        if(!Request.get("wupinmingcheng").equals(""))
        post.setWupinmingcheng(Request.get("wupinmingcheng"));
        if(!Request.get("wupintupian").equals(""))
        post.setWupintupian(Request.get("wupintupian"));
        if(!Request.get("wupinjiage").equals(""))
        post.setWupinjiage(Request.getDouble("wupinjiage"));
        if(!Request.get("maijia").equals(""))
        post.setMaijia(Request.get("maijia"));
        if(!Request.get("zixunneirong").equals(""))
        post.setZixunneirong(Request.get("zixunneirong"));
        if(!Request.get("maijiahuifu").equals(""))
        post.setMaijiahuifu(Request.get("maijiahuifu"));
        if(!Request.get("zixunren").equals(""))
        post.setZixunren(Request.get("zixunren"));
        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功" , Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }
    /**
     *  后台详情
     */
    @RequestMapping("/zaixianzixun_detail")
    public String detail()
    {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");
        Zaixianzixun map = service.find(id);  // 根据前台url 参数中的id获取行数据
        assign("map" , map);  // 把数据写到前台
        return json();   // 将数据写给前端
    }
        /**
    *  删除
    */
    @RequestMapping("/zaixianzixun_delete")
    public String delete()
    {
        _var = new LinkedHashMap(); // 重置数据
        if(!checkLogin()){
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap map = Query.make("zaixianzixun").find(id);
        service.delete(id);// 根据id 删除某行数据
        return showSuccess("删除成功",request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
