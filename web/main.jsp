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
                <a href="./Servlet"><img  class="img1" src="img/LOGO.JPG" alt="山东中医药大学理工学院"></a>
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
        <ul class="nav navbar-nav taglist">
            <li class="tag"><a href="http://www.sdutcm.edu.cn/" class="item">学校首页</a></li>
            <li class="tag"><a href="Servlet" class="item">院系首页</a></li>
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
    <div class="img">
        <a href="Servlet"><img src="img/2.jpg" alt=""></a>
    </div>

    <div class="">
        <br><hr><br>
    </div>

    <div class="main1">
        <h4><b>头条新闻</b></h4>
        <div class="col-sm-4">
            <a href="News1Servlet" class="title">
                <%
                    out.print(request.getAttribute("news1_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                        request.getAttribute("news1_brief")
                    %>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <a href="News2Servlet" class="title">
                <%
                    out.print(request.getAttribute("news2_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("news2_brief")
                    %>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <a href="News3Servlet" class="title">
                <%
                    out.print(request.getAttribute("news3_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("news3_brief")
                    %>
                </div>

            </div>
        </div>
    </div>

    <div>&nbsp;<hr><br></div>

    <div class="main2">
        <h4><b>学术动态</b></h4>
        <div class="col-sm-4">
            <a href="Activity1Servlet" class="title">
                <%
                    out.print(request.getAttribute("activity1_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                        request.getAttribute("activity1_brief")
                    %>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <a href="Activity2Servlet" class="title">
                <%
                    out.print(request.getAttribute("activity2_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("activity2_brief")
                    %>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <a href="Activity3Servlet" class="title">
                <%
                    out.print(request.getAttribute("activity3_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("activity3_brief")
                    %>
                </div>
            </div>
        </div>
        <div>&nbsp;<br/><br/><br/></div>
        <div class="col-sm-4">
            <a href="Activity4Servlet" class="title">
                <%
                    out.print(request.getAttribute("activity4_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("activity4_brief")
                    %>
                </div>

            </div>
        </div>
        <div class="col-sm-4">
            <a href="Activity5Servlet" class="title">
                <%
                    out.print(request.getAttribute("activity5_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("activity5_brief")
                    %>
                </div>

            </div>
        </div>
        <div class="col-sm-4">
            <a href="Activity6Servlet" class="title"> <%
                out.print(request.getAttribute("activity6_title"));
            %></a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("activity6_brief")
                    %>
                </div>

            </div>
        </div>
        <div>&nbsp;<br/><br/></div>
        <div class="col-sm-4">
            <a href="Activity7Servlet" class="title">
                <%
                    out.print(request.getAttribute("activity7_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("activity7_brief")
                    %>
                </div>

            </div>
        </div>
        <div class="col-sm-4">
            <a href="Activity8Servlet" class="title">
                <%
                    out.print(request.getAttribute("activity8_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("activity8_brief")
                    %>
                </div>

            </div>
        </div>
        <div class="col-sm-4">
            <a href="Activity9Servlet" class="title">
                <%
                out.print(request.getAttribute("activity9_title"));
                %>
            </a>
            <p>
                <span class="label label-primary">两性</span>
                <span class="label label-primary">html</span>
            </p>
            <div>
                <div class="text">
                    <%=
                    request.getAttribute("activity9_brief")
                    %>
                </div>
            </div>
        </div>
    </div>

    <div>&nbsp;<hr></div>

    <div class="row">
        <div class="container">
            <div class = "nav">
                <ul class="nav ">
                    <li><h4><b>常用链接</b></h4></li>
                    <hr>
                </ul>
            </div>
            <div class = "nav navbar-left">
                <ul class="nav ">
                    <li><a href="#" class="href">学校首页  &nbsp;&gt;&nbsp;&nbsp;&nbsp;</a></li>
                    <li><a href="#" class="href">院系简介  &nbsp;&gt;&nbsp;&nbsp;&nbsp;</a></li>
                </ul>
            </div>
            <div class = "nav navbar-left">
                <ul class="nav ">
                    <li><a href="#" class="href">学校首页  &nbsp;&gt;&nbsp;&nbsp;&nbsp;</a></li>
                    <li><a href="#" class="href">院系简介  &nbsp;&gt;&nbsp;&nbsp;&nbsp;</a></li>
                </ul>
            </div>
            <div class = "nav navbar-left">
                <ul class="nav ">
                    <li><a href="#" class="href">学校首页  &nbsp;&gt;&nbsp;&nbsp;&nbsp;</a></li>
                    <li><a href="#" class="href">院系简介  &nbsp;&gt;&nbsp;&nbsp;&nbsp;</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    版权所有 山东中医药大学 | 地址：山东省济南市长清区大学科技园大学路4655号 | 邮编：250355 | 鲁ICP备05002379号
</div>
</div>
</body>
</html>
