package com.xiaokangchenng.db;

import com.xiaokangchenng.model.Activity;
import com.xiaokangchenng.util.JdbcUtil;
import com.xiaokangchenng.model.News;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by chenxiaokang on 2017/6/2.
 */
public class Dao {

    List<News> newsList = null;
    List<Activity> activities = null;

    public List<News> selectNews(){
        newsList = new ArrayList<>();
        JdbcUtil jdbc = new JdbcUtil();
        Connection conn = jdbc.getConn();
        String sql = "select * from news ORDER BY news_id DESC limit 3";
        PreparedStatement statement = null;
        ResultSet set = null;
        News news = null;
        try {
            statement = conn.prepareStatement(sql);
            set = statement.executeQuery();
            while(set.next()){
                news = new News();
                news.setNews_id(set.getString("news_id"));
                news.setNews_title(set.getString("news_title"));
                news.setNews_content(set.getString("news_content"));
                news.setNews_brief(news.getNews_content().substring(0,105)+"...");
                newsList.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            jdbc.closeConn(conn,statement,set);
        }
        return newsList;
    }

    public List<Activity> selectActivity(){
        activities = new ArrayList<>();
        JdbcUtil jdbc = new JdbcUtil();
        Connection conn = jdbc.getConn();
        String sql = "select * from activity ORDER BY activity_id DESC limit 9";
        PreparedStatement statement = null;
        ResultSet set = null;
        Activity activity = null;
        try {
            statement = conn.prepareStatement(sql);
            set = statement.executeQuery();
            while(set.next()){
                activity = new Activity();
                activity.setActivity_id(set.getString("activity_id"));
                activity.setActivity_title(set.getString("activity_title"));
                activity.setActivity_content(set.getString("activity_content"));
                activity.setActivity_brief(activity.getActivity_content().substring(0,100)+"...");
                activities.add(activity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            jdbc.closeConn(conn,statement,set);
        }
        return activities;
    }
}
