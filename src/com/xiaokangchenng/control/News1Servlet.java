package com.xiaokangchenng.control;

import com.xiaokangchenng.db.Dao;
import com.xiaokangchenng.model.News;
import com.xiaokangchenng.util.ContentUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by chenxiaokang on 2017/6/4.
 */

@WebServlet(name = "News1Servlet")
public class News1Servlet extends HttpServlet {

    News news = null;

    @Override
    public void init() throws ServletException {
        news = new Dao().selectNews().get(0);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String content = new ContentUtil().strSplit(news.getNews_content());
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("news"+"1_title",news.getNews_title());
        request.setAttribute("news"+"1_content",news.getNews_content());
        request.getRequestDispatcher("./News1Content.jsp").forward(request,response);
    }
}
