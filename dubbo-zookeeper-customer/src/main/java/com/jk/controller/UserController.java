package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.*;
import com.jk.service.IUserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yangzhichao on 2018-04-03.
 */
@Controller
@RequestMapping("/userController")
public class UserController extends BaseController {
    //日志记录
    private static final Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    private IUserService userService;

    /**
     * 用户列表查询
     * @param user
     */
    @RequestMapping("/userList")
    public void userList(User user, HttpServletResponse response) {
        List<User> userList = userService.userList(user);
        super.writeJson(userList, response);
    }
    @RequestMapping("/topromotionList")
    public String topromotionList(){
        return "promotion/list";
    }

    @RequestMapping("/promotionList")
    public void promotionList(Promotion promotion,int page,int rows,HttpServletResponse response) throws Exception{
        JSONObject json=userService.promotionList(promotion, page,rows);
        super.writeJson(json,response);
    }
    /*public String promotionList(Promotion promotion, ModelMap model) {
        List<Promotion> promotionslist = userService.promotionList(promotion);
        model.put("page", promotionslist);
        return "promotion/list";
    }*/

    @RequestMapping("/toaddpromotion")
    public String toaddpromotion(){
        return "promotion/addpromotion";
    }
    /**
     *
     */
    @RequestMapping("/addpromotion")
    public void addpromotion(Promotion promotion,HttpServletResponse response){
        System.out.println("promotion = [" + promotion + "], response = [" + response + "]");

        int n= userService.addpromotion(promotion);
        super.writeJson(n,response);
    }

    /**
     * 修改回显
     * @param promotion
     *
     */

    @RequestMapping("showBackPromotion")
    public String showBackPromotion(Promotion promotion,HttpServletRequest request){
        promotion = userService.showBackPromotion(promotion.getId());
        request.setAttribute("thispromotionlist", promotion);
        return "promotion/updatePromotion";
    }

    //批量删除
    @RequestMapping("/deletepromotion")

    public void deletepromotion(Promotion promotion,HttpServletResponse response){
        int n = userService.deletepromotion(promotion.getName());
        //System.out.println(n);
        super.writeJson(n,response);
    }


    @RequestMapping("queryLevel")

    public void queryLevel(HttpServletResponse response){
        List<MemberGrade> list=userService.queryLevel();

        super.writeJson(list,response);
    }

    @RequestMapping("queryCategory")

    public void queryCategory(HttpServletResponse response){
        List<ProductCategory> list=userService.queryCategory();

        super.writeJson(list,response);
    }

    @RequestMapping("queryBrand")

    public void queryBrand(HttpServletResponse response){
        List<ProductCategory> list=userService.queryBrand();

        super.writeJson(list,response);
    }
    /**
     * 优惠券管理
     */
    @RequestMapping("/toSeoList")
    public String toSeoList(){
        return "promotion/seolist";
    }
    /**
     * 优惠券页面加载内容
     */

    @RequestMapping("/seoList")
    public void seoList(int page,int rows,HttpServletResponse response) throws Exception{
        JSONObject json=userService.seoList(page,rows);
        super.writeJson(json,response);
    }
    /**
     * 修改seo 回显
     */

    //回显
    @RequestMapping("showBackSeo")
    public String showBackSeo(Seo seo,HttpServletRequest request){
        request.setAttribute("go", seo.getTypename());
        List<Seotype> list = userService.querySeoType();
        seo = userService.querySeoById(seo.getId());

        request.setAttribute("goa", seo);
        return "promotion/updateSeo";
    }
    /**
     * 修改
     */

    @RequestMapping("updateThisSeo")
    public void updateGood(Seo seo,HttpServletResponse response){
        int n = userService.updateGood(seo);
        super.writeJson(n,response);
    }

}
