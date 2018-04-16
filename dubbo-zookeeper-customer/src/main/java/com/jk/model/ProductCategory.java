package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 骆慧敏 on 2018/4/5.
 */
public class ProductCategory implements Serializable {
    private static final long serialVersionUID = -4642297646831214791L;

    private Integer id;
    private Date modify_date;
    private Date create_date;
    private Integer orders;//
    private Integer grade;
    private String name;
    private String seodescription;//页面描述
    private String seokeywords;//页面关键字
    private String seotitle;//页面标题
    private String tree_path;//树路径
    private Integer parent;//上级分类
    private String text;

    @Override
    public String toString() {
        return "ProductCategory{" +
                "id=" + id +
                ", modify_date=" + modify_date +
                ", create_date=" + create_date +
                ", orders=" + orders +
                ", grade=" + grade +
                ", name='" + name + '\'' +
                ", seodescription='" + seodescription + '\'' +
                ", seokeywords='" + seokeywords + '\'' +
                ", seotitle='" + seotitle + '\'' +
                ", tree_path='" + tree_path + '\'' +
                ", parent=" + parent +
                ", text='" + text + '\'' +
                ", pid=" + pid +
                '}';
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    private Integer pid;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getModify_date() {
        return modify_date;
    }

    public void setModify_date(Date modify_date) {
        this.modify_date = modify_date;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSeodescription() {
        return seodescription;
    }

    public void setSeodescription(String seodescription) {
        this.seodescription = seodescription;
    }

    public String getSeokeywords() {
        return seokeywords;
    }

    public void setSeokeywords(String seokeywords) {
        this.seokeywords = seokeywords;
    }

    public String getSeotitle() {
        return seotitle;
    }

    public void setSeotitle(String seotitle) {
        this.seotitle = seotitle;
    }

    public String getTree_path() {
        return tree_path;
    }

    public void setTree_path(String tree_path) {
        this.tree_path = tree_path;
    }

    public Integer getParent() {
        return parent;
    }

    public void setParent(Integer parent) {
        this.parent = parent;
    }

}
