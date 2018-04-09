package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 季春阳 on 2018/4/8.
 */
public class Promotion implements Serializable {
    private static final long serialVersionUID = -4010492368232540079L;
    private Integer id;

    private Date create_date;
    private Date modify_date;
    private Integer orders;
    private Date begin_date;
    private Date end_date;
    private String introduction;
    private Integer is_coupon_allowed;
    private Integer is_free_shipping;
    private Double maximum_price;
    private Integer maximum_quantity;
    private Double minimumprice;
    private Integer minimumquantity;
    private String name;
    private String point_expression;
    private String price_expression;
    private String title;

    @Override
    public String toString() {
        return "Promotion{" +
                "id=" + id +
                ", create_date=" + create_date +
                ", modify_date=" + modify_date +
                ", orders=" + orders +
                ", begin_date=" + begin_date +
                ", end_date=" + end_date +
                ", introduction='" + introduction + '\'' +
                ", is_coupon_allowed=" + is_coupon_allowed +
                ", is_free_shipping=" + is_free_shipping +
                ", maximum_price=" + maximum_price +
                ", maximum_quantity=" + maximum_quantity +
                ", minimumprice=" + minimumprice +
                ", minimumquantity=" + minimumquantity +
                ", name='" + name + '\'' +
                ", point_expression='" + point_expression + '\'' +
                ", price_expression='" + price_expression + '\'' +
                ", title='" + title + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Date getModify_date() {
        return modify_date;
    }

    public void setModify_date(Date modify_date) {
        this.modify_date = modify_date;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    public Date getBegin_date() {
        return begin_date;
    }

    public void setBegin_date(Date begin_date) {
        this.begin_date = begin_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public Integer getIs_coupon_allowed() {
        return is_coupon_allowed;
    }

    public void setIs_coupon_allowed(Integer is_coupon_allowed) {
        this.is_coupon_allowed = is_coupon_allowed;
    }

    public Integer getIs_free_shipping() {
        return is_free_shipping;
    }

    public void setIs_free_shipping(Integer is_free_shipping) {
        this.is_free_shipping = is_free_shipping;
    }

    public Double getMaximum_price() {
        return maximum_price;
    }

    public void setMaximum_price(Double maximum_price) {
        this.maximum_price = maximum_price;
    }

    public Integer getMaximum_quantity() {
        return maximum_quantity;
    }

    public void setMaximum_quantity(Integer maximum_quantity) {
        this.maximum_quantity = maximum_quantity;
    }

    public Double getMinimumprice() {
        return minimumprice;
    }

    public void setMinimumprice(Double minimumprice) {
        this.minimumprice = minimumprice;
    }

    public Integer getMinimumquantity() {
        return minimumquantity;
    }

    public void setMinimumquantity(Integer minimumquantity) {
        this.minimumquantity = minimumquantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPoint_expression() {
        return point_expression;
    }

    public void setPoint_expression(String point_expression) {
        this.point_expression = point_expression;
    }

    public String getPrice_expression() {
        return price_expression;
    }

    public void setPrice_expression(String price_expression) {
        this.price_expression = price_expression;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
