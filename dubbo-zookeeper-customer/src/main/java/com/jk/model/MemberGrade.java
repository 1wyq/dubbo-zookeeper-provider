package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by 冯新瑞 on 2018/4/9.
 */
public class MemberGrade implements Serializable{

    private static final long serialVersionUID = 7453635531603989167L;

    private Integer id;//主键
    private Date create_date ;//创建日期
    private Date modify_date ;//修改日期
    private Integer amount;//消费金额
    private Integer is_default ;//是否默认
    private Integer is_special ;//是否特殊
    private String  namess ;//名称
    private Integer scales;//优惠比例

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

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Integer getIs_default() {
        return is_default;
    }

    public void setIs_default(Integer is_default) {
        this.is_default = is_default;
    }

    public Integer getIs_special() {
        return is_special;
    }

    public void setIs_special(Integer is_special) {
        this.is_special = is_special;
    }

    public String getNamess() {
        return namess;
    }

    public void setNamess(String namess) {
        this.namess = namess;
    }

    public Integer getScales() {
        return scales;
    }

    public void setScales(Integer scales) {
        this.scales = scales;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MemberGrade that = (MemberGrade) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (create_date != null ? !create_date.equals(that.create_date) : that.create_date != null) return false;
        if (modify_date != null ? !modify_date.equals(that.modify_date) : that.modify_date != null) return false;
        if (amount != null ? !amount.equals(that.amount) : that.amount != null) return false;
        if (is_default != null ? !is_default.equals(that.is_default) : that.is_default != null) return false;
        if (is_special != null ? !is_special.equals(that.is_special) : that.is_special != null) return false;
        if (namess != null ? !namess.equals(that.namess) : that.namess != null) return false;
        return scales != null ? scales.equals(that.scales) : that.scales == null;

    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (create_date != null ? create_date.hashCode() : 0);
        result = 31 * result + (modify_date != null ? modify_date.hashCode() : 0);
        result = 31 * result + (amount != null ? amount.hashCode() : 0);
        result = 31 * result + (is_default != null ? is_default.hashCode() : 0);
        result = 31 * result + (is_special != null ? is_special.hashCode() : 0);
        result = 31 * result + (namess != null ? namess.hashCode() : 0);
        result = 31 * result + (scales != null ? scales.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "MemberGrade{" +
                "id=" + id +
                ", create_date=" + create_date +
                ", modify_date=" + modify_date +
                ", amount=" + amount +
                ", is_default=" + is_default +
                ", is_special=" + is_special +
                ", namess='" + namess + '\'' +
                ", scales=" + scales +
                '}';
    }
}
