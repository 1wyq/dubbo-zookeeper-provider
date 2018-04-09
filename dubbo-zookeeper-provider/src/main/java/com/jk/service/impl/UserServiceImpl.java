package com.jk.service.impl;





import com.alibaba.fastjson.JSONObject;
import com.jk.dao.UserMapper;
import com.jk.model.Promotion;
import com.jk.model.User;
import com.jk.model.Xxx;
import com.jk.service.IUserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yangzhichao on 2018-04-03.
 */
@Service("userService")
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;
            ;

   public List<User> userList(User user) {
        List<User> userList = userMapper.userList(user);
        return userList;
    }

    public JSONObject promotionList(Promotion promotion, int page, int rows) {
        long totalCount =userMapper.queryCount(promotion);
        int start =(page-1)*rows;
        int end =start+rows;
        List<Promotion>list=userMapper.queryPromotion(start, end, promotion);
        JSONObject  json = new JSONObject();
        json.put("total", totalCount);
        json.put("rows", list);

        return json;
    }

    /*public List<Promotion> promotionList(Promotion promotion) {
        List<Promotion> promotionList = userMapper.promotionListList(promotion);
        return promotionList;
    }*/



}
