package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Promotion;
import com.jk.model.User;
import com.jk.model.Xxx;

import java.util.List;

/**
 * Created by yangzhichao on 2018-04-03.
 */
public interface IUserService {

    /**
     * 用户列表查询
     * @param user
     * @return
     */
    public List<User> userList(User user);

    JSONObject promotionList(Promotion promotion, int page, int rows);
    /**
     *
     */

}
