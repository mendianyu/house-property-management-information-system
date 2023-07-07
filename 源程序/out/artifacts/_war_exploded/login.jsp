<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
    <link type="text/css" rel="stylesheet" href="static/script_css/style.css">
    <style>
        .form .itxt {
            border: 0 none;
            float: none;
            font-family: "宋体";
            font-size: 14px;
            height: 25px;
            line-height: 18px;
            overflow: hidden;
            padding: 10px 0 10px 10px;
            width: 250px;
            border: 1px #e3e3e3 solid;
        }
        #login_header {
            height: 50px;

        }

    </style>
</head>
<body>
<div id="login_header">
    <span class="login_word" style="font-size: 40px;color:#1a36bf;">房产信息管理系统</span>
</div>

<div class="login_banner">

    <div id="l_content">
        <span class="login_word">欢迎登录</span>
    </div>

    <div id="content">
        <div class="login_form">
            <div class="login_box">
                <div class="tit">
                    <h1>尊敬的用户您好！</h1>
                    <a href="User/User_Register.jsp">立即注册</a>
                </div>
                <div class="msg_cont">
                    <b></b>
                    <span class="errorMsg">请先选择身份</span>
                </div>
                <div class="form">
                    <form action="login_back.jsp" method="get">
                        <label>登陆身份：
                            <select name="role" style="height:30px;  width: 260px;text-align: center;" tabindex="1">
                                <option value="系统管理员">
                                    系统管理员
                                </option>
                                <option value="房产经纪人">
                                    房产经纪人
                                </option>
                                <option value="顾客" selected>
                                    顾客
                                </option>
                            </select>
                        </label>
                        <br/>
                        <br/>
                        <label>&nbsp用户ID：&nbsp&nbsp
                            <input class="itxt" type="text" placeholder="请输入用户名" autocomplete="off" tabindex="1"
                                   name="username"/>
                        </label>
                        <br/>
                        <br/>
                        <label>用户密码：
                            <input class="itxt" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1"
                                   name="password"/>
                        </label>
                        <br/>
                        <br/>
                        <input type="submit" value="登录" id="sub_btn"/>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
<div id="bottom">
			<span>
				Mendianyu.Copyright &copy;2023
			</span>
</div>
</body>
</html>