package com.jk.controller;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Promotion;
import com.jk.model.User;
import com.jk.model.Xxx;
import com.jk.service.IUserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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

}
