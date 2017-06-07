package com.xiaokangchenng.util;

import com.xiaokangchenng.db.Dao;
import com.xiaokangchenng.model.News;

import java.io.*;

/**
 * Created by chenxiaokang on 2017/6/5.
 * 文章内容处理工具类
 */
public class ContentUtil {

    File file = null;

    public ContentUtil(){
        file = new File("./temp");
        if(!file.exists()){
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public String strSplit(String content){
        PrintWriter pw = null;
        BufferedReader br = null;
        String line = "";
        StringBuffer buffer = null;
        try {
            pw = new PrintWriter(file);
            pw.print(content);
            pw.flush();
            br = new BufferedReader(new FileReader(file));
            buffer = new StringBuffer();
            while((line = br.readLine())!=null){
                buffer.append("<p>"+line+"</p>\n\r");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if(pw != null){
                pw.close();
            }
            if(br != null){
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return buffer.toString();
    }

    public static void main(String[] args){
        News news = new Dao().selectNews().get(0);
        System.out.println(new ContentUtil().strSplit(news.getNews_content()));
    }
}
