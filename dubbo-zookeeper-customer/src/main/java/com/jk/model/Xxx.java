package com.jk.model;

import java.io.Serializable;

/**
 * Created by 季春阳 on 2018/4/9.
 */
public class Xxx implements Serializable {
    private static final long serialVersionUID = 658221797761285506L;
    private Integer id;
    private String name;

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

    @Override
    public String toString() {
        return "Xxx{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
