package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 季春阳 on 2018/4/16.
 */
public class Seo implements Serializable{
    private static final long serialVersionUID = 3382715854890953185L;
    private Integer id;
    private Date create_date;
    private Date modify_date;
    private String description;
    private String keywords;
    private String title;
    private Integer type;

    private String typename;

    @Override
    public String toString() {
        return "Seo{" +
                "id=" + id +
                ", create_date=" + create_date +
                ", modify_date=" + modify_date +
                ", description='" + description + '\'' +
                ", keywords='" + keywords + '\'' +
                ", title='" + title + '\'' +
                ", type=" + type +
                ", typename='" + typename + '\'' +
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }
}
