package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 骆慧敏 on 2018/4/6.
 */
public class Brand implements Serializable{
    private static final long serialVersionUID = -7120583181474403287L;

    private Integer id;
    private Date createdate;
    private Date modifydate;
    private Integer orders;
    private String introduction;
    private String logo;
    private String name;
    private Integer type;
    private String url;
    private Integer productcateid;

    @Override
    public String toString() {
        return "Brand{" +
                "id=" + id +
                ", createdate=" + createdate +
                ", modifydate=" + modifydate +
                ", orders=" + orders +
                ", introduction='" + introduction + '\'' +
                ", logo='" + logo + '\'' +
                ", name='" + name + '\'' +
                ", type=" + type +
                ", url='" + url + '\'' +
                ", productcateid=" + productcateid +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getProductcateid() {
        return productcateid;
    }

    public void setProductcateid(Integer productcateid) {
        this.productcateid = productcateid;
    }
}
