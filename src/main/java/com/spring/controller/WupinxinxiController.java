package com.spring.controller;

import com.spring.dao.WupinxinxiMapper;
import com.spring.entity.Wupinxinxi;
import com.spring.service.WupinxinxiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;
import util.Request;
import util.Info;
import dao.Query;
import java.util.*;
import dao.CommDAO;


/**
 * 物品信息 */
@Controller
public class WupinxinxiController extends BaseController
{
    @Autowired
    private WupinxinxiMapper dao;
    @Autowired
    private WupinxinxiService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/wupinxinxi_list")
    public String list()
    {

        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }

        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc
        int pagesize = Request.getInt("pagesize" , 12); // 获取前台一页多少行数据
        Example example = new Example(Wupinxinxi.class); //  创建一个扩展搜索类
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
        List<Wupinxinxi> list = service.selectPageExample(example , page , pagesize);   // 获取当前页的行数
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
                if(!Request.get("wupinzhuangtai").equals("")) {
            where += " AND wupinzhuangtai ='"+Request.get("wupinzhuangtai")+"' ";
        }
            return where;
    }

    /**
     * 卖家列表
     */
    @RequestMapping("/wupinxinxi_list_maijia")
    public String listmaijia()
    {
        // 检测是否有登录，没登录则跳转到登录页面
        if(!checkLogin()){
            return showError("尚未登录" , "./login.do");
        }
        String order = Request.get("order" , "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort  = Request.get("sort" , "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc
        int pagesize = Request.getInt("pagesize" , 12); // 获取前台一页多少行数据

        Example example = new Example(Wupinxinxi.class);  //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria(); // 创建一个扩展搜索条件类
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
        List<Wupinxinxi> list = service.selectPageExample(example , page , pagesize);
        assign("wupinfenleiList" , new CommDAO().select("SELECT * FROM wupinfenlei ORDER BY id desc"));
        assign("totalCount" , request.getAttribute("totalCount"));
        assign("list" , list);
        assign("orderby" , order);
        assign("sort" , sort);
        return json();   // 将数据写给前端
    }

    /**
    *  前台列表页
    *
    */
    @RequestMapping("/wupinxinxilist")
    public String index()
    {
        String order = Request.get("order" , "id");
        String sort  = Request.get("sort" , "desc");

        Example example = new Example(Wupinxinxi.class);
        Example.Criteria criteria = example.createCriteria();
        String where = " 1=1 ";
        where += " AND issh='是' ";
        where += getWhere();
        criteria.andCondition(where);
        if(sort.equals("desc")){
            example.orderBy(order).desc();
        }else{
            example.orderBy(order).asc();
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page"));
        page = Math.max(1 , page);
        List<Wupinxinxi> list = service.selectPageExample(example , page , 12);
        assign("mapwupinfenlei4" , new CommDAO().select("SELECT id,fenleimingcheng FROM wupinfenlei"));
        assign("totalCount" , request.getAttribute("totalCount"));
        assign("list" , list);
        assign("where" , where);
        assign("orderby" , order);
        assign("sort" , sort);
        return json();
    }



    @RequestMapping("/wupinxinxi_add")
    public String add()
    {
        _var = new LinkedHashMap(); // 重置数据
        assign("wupinfenleiList" , new CommDAO().select("SELECT * FROM wupinfenlei ORDER BY id desc"));
        return json();   // 将数据写给前端
    }

    @RequestMapping("/wupinxinxi_updt")
    public String updt()
    {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台页面
        Wupinxinxi wpxx = service.find(id);
        assign("wpxx" , wpxx);
        assign("updtself" , 0);
        assign("wupinfenleiList" , new CommDAO().select("SELECT * FROM wupinfenlei ORDER BY id desc"));
        return json();   // 将数据写给前端
    }
    /**
     * 添加物品
     * @return
     */
    @RequestMapping("/wupinxinxiinsert")
    public String insert()
    {
        _var = new LinkedHashMap(); // 重置数据
        Wupinxinxi post = new Wupinxinxi();  // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setWupinbianhao(Request.get("wupinbianhao"));
        post.setFenlei(Request.get("fenlei"));
        post.setWupinmingcheng(Request.get("wupinmingcheng"));
        post.setWupintupian(Request.get("wupintupian"));
        post.setWupinjiage(Request.getDouble("wupinjiage"));
        post.setLianxidianhua(Request.get("lianxidianhua"));
        post.setLianxiren(Request.get("lianxiren"));
        post.setJiaoyididian(Request.get("jiaoyididian"));
        post.setXinjiuchengdu(Request.get("xinjiuchengdu"));
        post.setWupinzhuangtai(Request.get("wupinzhuangtai"));
        post.setWupinjieshao(util.DownloadRemoteImage.run(Request.get("wupinjieshao")));
        post.setMaijia(Request.get("maijia"));
        post.setIssh("是");
        post.setAddtime(Info.getDateStr()); // 设置添加时间
        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功" , Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
    * 更新内容
    * @return
    */
    @RequestMapping("/wupinxinxiupdate")
    public String update()
    {
        _var = new LinkedHashMap(); // 重置数据
        // 创建实体类
        Wupinxinxi post = new Wupinxinxi();
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
            if(!Request.get("lianxidianhua").equals(""))
        post.setLianxidianhua(Request.get("lianxidianhua"));
                if(!Request.get("lianxiren").equals(""))
        post.setLianxiren(Request.get("lianxiren"));
                if(!Request.get("jiaoyididian").equals(""))
        post.setJiaoyididian(Request.get("jiaoyididian"));
                if(!Request.get("xinjiuchengdu").equals(""))
        post.setXinjiuchengdu(Request.get("xinjiuchengdu"));
                if(!Request.get("wupinzhuangtai").equals(""))
        post.setWupinzhuangtai(Request.get("wupinzhuangtai"));
                if(!Request.get("wupinjieshao").equals(""))
        post.setWupinjieshao(util.DownloadRemoteImage.run(Request.get("wupinjieshao")));
            if(!Request.get("maijia").equals(""))
        post.setMaijia(Request.get("maijia"));
        
        post.setId(Request.getInt("id"));
                service.update(post); // 更新数据
        int charuid = post.getId().intValue();
                        return showSuccess("保存成功" , Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }
    /**
     *  后台详情
     */
    @RequestMapping("/wupinxinxi_detail")
    public String detail()
    {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");
        Wupinxinxi map = service.find(id);  // 根据前台url 参数中的id获取行数据
        assign("map" , map);  // 把数据写到前台
        return json();   // 将数据写给前端
    }
    /**
     *  前台详情
     */
    @RequestMapping("/wupinxinxidetail")
    public String detailweb()
    {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");
        Wupinxinxi map = service.find(id);
        if(!checkLogin()){
            assign("isCollect" , false);
        }else{
            assign("isCollect" , Query.make("shoucangjilu").where("username",session.getAttribute("username")).where("biao" , "wupinxinxi").where("xwid",id).count()>0);
        }
        assign("map" , map);
        return json();   // 将数据写给前端
    }

    /**
    *  删除
    */
    @RequestMapping("/wupinxinxi_delete")
    public String delete()
    {
        _var = new LinkedHashMap(); // 重置数据
        if(!checkLogin()){
            return showError("尚未登录");
        }
        int id = Request.getInt("id");  // 根据id 删除某行数据
        HashMap map = Query.make("wupinxinxi").find(id);
        service.delete(id);// 根据id 删除某行数据
        return showSuccess("删除成功",request.getHeader("referer"));//弹出删除成功，并跳回上一页
    }
}
