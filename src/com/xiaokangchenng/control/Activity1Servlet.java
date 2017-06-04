package com.xiaokangchenng.control;

import com.xiaokangchenng.db.Dao;
import com.xiaokangchenng.model.Activity;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by chenxiaokang on 2017/6/4.
 */

@WebServlet(name = "Activity1Servlet")
public class Activity1Servlet extends HttpServlet {

        Activity activity = null;

        @Override
        public void init() throws ServletException {
            activity = new Dao().selectActivity().get(0);
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setAttribute("activity"+"1_title",activity.getActivity_title());
            request.setAttribute("activity"+"1_content",activity.getActivity_content());
            request.getRequestDispatcher("./Activity1Content.jsp").forward(request,response);
        }
}
