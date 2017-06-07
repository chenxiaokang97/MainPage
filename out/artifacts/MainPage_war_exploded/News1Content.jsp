<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <title>山东中医药大学理工学院</title>
</head>
<body>
<div class="body1">
    <div class="topline"></div>
    <div class="navbar navbar-default">
        <div class="navbar-header">
            <!-- LOGO -->
            <!-- <div class="navbar-brand">山东中医药大学理工学院</div> -->
            <div class="navbar-brand">
                <a href="Servlet"><img  class="img1" src="img/LOGO.JPG" alt="山东中医药大学理工学院"></a>
            </div>
            <!-- <div class="navbar-brand"><img  class="img2" src="img/1.png" alt="山东中医药大学理工学院"></div> -->
        </div>
        <ul class="nav navbar-nav navbar-right login">
            <li><a href="#" class="languageText">English Version</a></li>
            <br>
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control navbar-right">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
        </ul>
    </div>
    <div class = "nav">
        <ul class="nav navbar-nav taglist content_list">
            <li class="tag"><a href="http://www.sdutcm.edu.cn/" class="item">学校首页</a></li>
            <li class="tag"><a href="./Servlet" class="item">院系首页</a></li>
            <li class="tag"><a href="#" class="item">院系简介</a></li>
            <li class="tag"><a href="#" class="item">教育教学</a></li>
            <li class="tag"><a href="#" class="item">师资状况</a></li>
            <li class="tag"><a href="#" class="item">招生信息</a></li>
            <li class="tag"><a href="#" class="item">学生活动</a></li>
            <li class="tag"><a href="#" class="item">新闻动态</a></li>
            <li class="tag"><a href="#" class="item">科研成果</a></li>
            <li class="tag"><a href="#" class="item">联系我们</a></li>
        </ul>
    </div>

    <div>
        <div class="content_title">
            <%=
                request.getAttribute("news1_title")
            %>
        </div>
        <div class="content_main">
            <pre>
            <%=
                request.getAttribute("news1_content")
            %>
            </pre>
        </div>
    </div>

<div class="footer">
    版权所有 山东中医药大学 | 地址：山东省
    济南市长清区大学科技园大学路4655号 | 邮编：250355 | 鲁ICP备05002379号
</div>
</div>
</body>
</html>
