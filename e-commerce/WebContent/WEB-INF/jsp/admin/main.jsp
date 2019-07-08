<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 这个语句是用来拼装当前网页的相对路径的。

<base href="...">是用来表明当前页面的相对路径所使用的根路径的。
比如，页面内部有一个连接，完整的路径应该是 http://localhost:80/myblog/authen/login.do
其中http://server/是服务器的基本路径，myblog是当前应用程序的名字，那么，我的根路径应该是那么http://localhost:80/myblog/。

有了这个 <base ... >以后，我的页面内容的连接，我不想写全路径，我只要写 authen/login.do就可以了。服务器会自动把 <base ...>指定的路径和页面内的相对路径拼装起来，组成完整路径。
如果没有这个 <base...>，那么我页面的连链接就必须写全路径，否则服务器会找不到。

request.getSchema()可以返回当前页面使用的协议，就是上面例子中的“http”
request.getServerName()可以返回当前页面所在的服务器的名字，就是上面例子中的“localhost"
request.getServerPort()可以返回当前页面所在的服务器使用的端口,就是80，
request.getContextPath()可以返回当前页面所在的应用的名字，就是上面例子中的myblog
这四个拼装起来，就是当前应用的跟路径了 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>后台主页面</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	margin: 0px auto;
	height: auto;
	width: 800px;
	border: 1px solid #006633;
}

#header {
	height: 90px;
	width: 800px;
	background-image: url(images/admin/bb.jpg);
	margin: 0px 0px 3px 0px;
}

#header h1 {
	text-align: center;
	font-family: 华文彩云;
	color: #000000;
	font-size: 30px；
}

#navigator {
	height: 25px;
	width: 800px;
	font-size: 14px;
	background-image: url(images/admin/bb.jpg);
}
#navigator ul {
	list-style-type: none;
}
#navigator li {
	float: left;
	position: relative;
}
#navigator li a {
	color: #000000;
	text-decoration: none;
	padding-top: 4px;
	display: block;
	width: 98px;
	height: 22px;
	text-align: center;
	background-color: PaleGreen;
	margin-left: 2px;
}
#navigator li a:hover {
	background-color: #006633;
	color: #FFFFFF;
}
#navigator ul li ul {
   visibility: hidden;
   position: absolute;
}

#navigator ul li:hover ul,
#navigator ul a:hover ul{
   visibility: visible;
}

#content {
	height: auto;
	width: 780px;
	padding: 10px;
}

#content iframe {
	height: 300px;
	width: 780px;
}

#footer {
	height: 30px;
	width: 780px;
	line-height: 2em;
	text-align: center;
	background-color: PaleGreen;
	padding: 10px;
}
</style>
</head>
<body>
	<div id="header">
		<br>
		<br>
		<h1>欢迎${auser.aname}进入后台管理系统！</h1>
	</div>
	<div id="navigator">
		<ul>
			<li><a>商品管理</a>
				<ul>
					<li><a href="adminGoods/toAddGoods" target="center">添加商品</a></li>
					<li><a href="adminGoods/selectGoods?act=deleteSelect" target="center">删除商品</a></li>
					<li><a href="adminGoods/selectGoods?act=updateSelect" target="center">修改商品</a></li>
					<li><a href="adminGoods/selectGoods" target="center">查询商品</a></li>
				</ul>
			</li>
			<li><a>类型管理</a>
				<ul>
					<li><a href="adminType/toAddType" target="center">添加类型</a></li>
					<li><a href="adminType/toDeleteType" target="center">删除类型</a></li>
				</ul>
			</li>
			<li><a>用户管理</a>
				<ul>
					<li><a href="adminUser/userInfo" target="center">删除用户</a></li>
				</ul>
			</li>
			<li><a>订单管理</a>
				<ul>
					<li><a href="adminOrder/orderInfo" target="center">删除订单</a></li>
				</ul>
			</li>
			<li><a>公告管理</a>
				<ul>
					<li><a href="adminNotice/toAddNotice" target="center">添加公告</a></li>
					<li><a href="adminNotice/deleteNoticeSelect" target="center">删除公告</a></li>
				</ul>
			</li>
			<li><a href="exit">安全退出</a></li>
		</ul>
		
	</div>
	<div id="content">
		<iframe src="adminGoods/selectGoods"  name="center" frameborder="0"></iframe>
	</div>
	<div id="footer">forward ©hfy</div>
</body>
</html>


