package com.xiaokangchenng.model;

/**
 * Created by chenxiaokang on 2017/6/1.
 */
public class News {

    private String news_id;
    private String news_title;
    private String news_brief;
    private String news_content;

    public News(){}

    public String getNews_id() {
        return news_id;
    }

    public void setNews_id(String news_id) {
        this.news_id = news_id;
    }

    public String getNews_title() {
        return news_title;
    }

    public void setNews_title(String news_title) {
        this.news_title = news_title;
    }

    public String getNews_brief() {
        return news_brief;
    }

    public void setNews_brief(String news_brief) {
        this.news_brief = news_brief;
    }

    public String getNews_content() {
        return news_content;
    }

    public void setNews_content(String news_content) {
        this.news_content = news_content;
    }

    @Override
    public String toString() {
        return "News{" +
                "news_id=" + news_id +
                ", news_title='" + news_title + '\'' +
                ", news_brief='" + news_brief + '\'' +
                ", news_content='" + news_content + '\'' +
                '}';
    }


}
