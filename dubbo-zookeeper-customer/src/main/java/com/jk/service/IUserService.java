package com.jk.service;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.*;

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


    List<MemberGrade> queryLevel();

    List<ProductCategory> queryCategory();

    int deletepromotion(String name);

    List<ProductCategory> queryBrand();

    int addpromotion(Promotion promotion);

    JSONObject seoList(int page, int rows);

    List<Seotype> querySeoType();

    Seo querySeoById(Integer id);

    int updateGood(Seo seo);

    Promotion showBackPromotion(Integer id);


    /**
     *
     */

}
