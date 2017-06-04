package com.xiaokangchenng.model;

/**
 * Created by chenxiaokang on 2017/6/4.
 */
public class Activity {

    private String activity_id;
    private String activity_title;
    private String activity_content;
    private String activity_brief;

    public Activity(){}

    @Override
    public String toString() {
        return "Activity{" +
                "activity_id='" + activity_id + '\'' +
                ", activity_title='" + activity_title + '\'' +
                ", activity_content='" + activity_content + '\'' +
                ", activity_brief='" + activity_brief + '\'' +
                '}';
    }

    public String getActivity_id() {
        return activity_id;
    }

    public void setActivity_id(String activity_id) {
        this.activity_id = activity_id;
    }

    public String getActivity_title() {
        return activity_title;
    }

    public void setActivity_title(String activity_title) {
        this.activity_title = activity_title;
    }

    public String getActivity_content() {
        return activity_content;
    }

    public void setActivity_content(String activity_content) {
        this.activity_content = activity_content;
    }

    public String getActivity_brief() {
        return activity_brief;
    }

    public void setActivity_brief(String activity_brief) {
        this.activity_brief = activity_brief;
    }
}
