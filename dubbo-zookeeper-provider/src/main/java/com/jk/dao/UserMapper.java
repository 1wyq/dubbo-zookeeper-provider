package com.jk.dao;

import com.jk.model.Promotion;
import com.jk.model.User;
import com.jk.model.Xxx;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    /**
     * 用户列表查询
     * @param user
     */
    public List<User> userList(User user);

    List<Promotion> promotionListList(Promotion promotion);

    List<Xxx> xxxList();

    long queryCount(@Param("pr")Promotion promotion);

    List<Promotion> queryPromotion(@Param("start")int start, @Param("end")int end, @Param("pr")Promotion promotion);
}