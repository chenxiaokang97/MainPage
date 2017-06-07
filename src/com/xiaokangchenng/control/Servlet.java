package com.xiaokangchenng.control;

import com.xiaokangchenng.db.Dao;
import com.xiaokangchenng.model.Activity;
import com.xiaokangchenng.model.News;

import javax.servlet.ServletException;
import java.io.IOException;
import java.util.List;

/**
 * Created by chenxiaokang on 2017/6/2.
 */

public class Servlet extends javax.servlet.http.HttpServlet {

    List<News> newsList = null;
    List<Activity> activities = null;

    @Override
    public void init() throws ServletException {
        newsList = new Dao().selectNews();
        activities = new Dao().selectActivity();
    }

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
//        response.setCharacterEncoding("utf-8");
        int news_index = 1;
        for(News news : newsList){
            request.setAttribute("news"+news_index+"_title",news.getNews_title());
            request.setAttribute("news"+news_index+"_brief",news.getNews_brief());
            news_index++;
        }
        int activity_index = 1;
        for(Activity activity : activities){
            request.setAttribute("activity"+activity_index+"_title",activity.getActivity_title());
            request.setAttribute("activity"+activity_index+"_brief",activity.getActivity_brief());
            activity_index++;
        }
        request.getRequestDispatcher("./main.jsp").forward(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
