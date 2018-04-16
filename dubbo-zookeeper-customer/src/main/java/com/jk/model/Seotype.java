package com.jk.model;

import java.io.Serializable;

/**
 * Created by 季春阳 on 2018/4/16.
 */
public class Seotype implements Serializable {
    private static final long serialVersionUID = -6519517115842206575L;
    private Integer id;
    private String name;

    @Override
    public String toString() {
        return "Seotype{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
