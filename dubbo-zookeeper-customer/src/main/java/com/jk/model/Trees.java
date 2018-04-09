package com.jk.model;

import java.io.Serializable;

/**
 * Created by 骆慧敏 on 2018/4/5.
 */



    public class Trees implements Serializable {
        private static final long serialVersionUID = -1800233088030401297L;
        private Integer id;
        private String text;
        private String url;
        private String pid;

        private String ptext;

        @Override
        public String toString() {
            return "Tree{" +
                    "id=" + id +
                    ", text='" + text + '\'' +
                    ", url='" + url + '\'' +
                    ", pid='" + pid + '\'' +
                    ", ptext='" + ptext + '\'' +
                    '}';
        }

        public Integer getId() {
            return id;
        }

        public void setId(Integer id) {
            this.id = id;
        }

        public String getText() {
            return text;
        }

        public void setText(String text) {
            this.text = text;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public String getPid() {
            return pid;
        }

        public void setPid(String pid) {
            this.pid = pid;
        }

        public String getPtext() {
            return ptext;
        }

        public void setPtext(String ptext) {
            this.ptext = ptext;
        }
    }

