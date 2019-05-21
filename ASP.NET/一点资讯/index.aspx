﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>一点资讯</title>
    <link rel="icon" href="./img/logo.png" type="image/icon">
    <link href="css/font.css" rel="stylesheet" type="text/css" />
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="js/show.js" type="text/javascript"></script>
</head>
<body>
    <div id="wrap">
        <!--最上面的灰色导航-->
        <header id="header" class="clear_fix">
             <div class="header_top ">
                 <ul class="header_right clear_fix">
                     <li><a href="#">校园大使</a></li>
                     <li><a href="#">代理合作</a><span></span></li>

                     <li><a href="#">侵权投诉</a><span></span></li>
                     <li><a href="#">品牌介绍</a><span></span></li>
                 </ul>
             </div>
             <div  class="header_search">
                 <div class="search_left">
                     <div class="logo">
                     </div>
                     <div class="icon_logo"></div>
                     <input type="text" placeholder="大家都在搜">
                     <button id="btn">搜索</button>
                 </div>
                 <div class="search_right">
                     <ul class="clear_fix">
                         <li class="login_button"><a href="#"><button>登录</button></a></li>
                         <li><a href="#">一点号</a><span></span></li>
                         <li><a href="#">下载app</a><span></span></li>
                     </ul>
                 </div>
             </div>
             <div class="header_nav" >
                 <ul class="clear_fix">
                     <li><a href="#" class="active">首页</a></li>
                     <li><a href="#">要闻</a></li>
                     <li><a href="#">一点号</a></li>
                     <li><a href="#">视频</a></li>
                     <li><a href="#">段子</a></li>
                     <li><a href="#">汽车</a></li>
                     <li><a href="#">社会</a></li>
                     <li><a href="#">娱乐</a></li>
                     <li><a href="#">军事</a></li>
                     <li><a href="#">体育</a></li>
                     <li><a href="#">NBA</a></li>
                     <li><a href="#">财经</a></li>
                     <li id="down"><a href="#"><img src="./img/down%20(2).png" alt=""></a></li>
                 </ul>
                 <div class="list">
                      <ul class="list_down clear_fix">
                          <li><a href="#" >首页</a></li>
                          <li><a href="#">要闻</a></li>
                          <li><a href="#">一点号</a></li>
                          <li><a href="#">视频</a></li>
                          <li><a href="#">段子</a></li>
                          <li><a href="#">汽车</a></li>
                          <li><a href="#">社会</a></li>
                          <li><a href="#">娱乐</a></li>
                          <li><a href="#">军事</a></li>
                          <li><a href="#">体育</a></li>
                          <li><a href="#">NBA</a></li>
                          <li><a href="#">财经</a></li>
                          <li><a href="#">科技</a></li>
                          <li><a href="#">数码</a></li>
                          <li><a href="#">美图</a></li>
                          <li><a href="#">健康</a></li>
                          <li><a href="#">时尚</a></li>
                          <li><a href="#">搞笑</a></li>
                          <li><a href="#">旅游</a></li>
                      </ul>
                 </div>
             </div>
        </header>
        <!--内容区所有的内容-->
        <div id="wraper">
            <div class="content clear_fix">
                <!--左边区域内容 一列-->
                <div class="content_left">
                    <div class="left_top">
                        <img src="./img/1.jpg" alt="">
                        <p>
                            小伙直升机迎娶新娘，真刺激</p>
                    </div>
                    <div class="left_bottom">
                        <ul>
                            <li class="clear_fix"><a href="#">
                                <div class="bottom_left">
                                    <img src="./img/2.jpeg" alt="">
                                </div>
                                <div class="bottom_right">
                                    <p>
                                        重交易量级大！前火箭16+13第1中锋投奔詹皇？骑士甩两大毒瘤换他</p>
                                    <div class="clear_fix">
                                        <span>
                                            <img src="./img/little.jpg" alt="" class="user_icon"></span> <span>毛罗聊球</span>
                                        <span>144评</span> <span>刚刚</span> <span class="close">X</span>
                                    </div>
                                </div>
                            </a></li>
                            <asp:ListView ID="lv_newsDetail" runat="server" DataSourceID="ads_news" ItemPlaceholderID="news_holder">
                                <LayoutTemplate>
                                    <div runat="server" id="news_holder">
                                    </div>
                                </LayoutTemplate>
                                <ItemTemplate>
                                <li class="clear_fix"><a href="#">
                                <div class="bottom_left">
                                    <img src="./img/2.jpeg" alt="">
                                </div>
                                <div class="bottom_right">
                                    <h1><a href="S6_newsLoad.aspx?id=<%#Eval("news_id") %>">
                                            <%#Eval("news_title") %></a></h1>
                                    <div class="clear_fix">
                                        <span>
                                            <img src="./img/little.jpg" alt="" class="user_icon"></span> <span>毛罗聊球</span>
                                        <span>144评</span> <span>刚刚</span> <span class="close">X</span>
                                    </div>
                                </div>
                            </a></li>
                                </ItemTemplate>
                            </asp:ListView>
                            <asp:AccessDataSource ID="ads_news" runat="server" DataFile="~/data/news.mdb" SelectCommand="SELECT *  FROM [T_NEWS]">
                            </asp:AccessDataSource>
                        </ul>
                    </div>
                </div>
                <!--右边内容一列-->
                <div class="content_right clear_fix">
                    <div class="right_top">
                        <ul>
                            <li class="clear_fix">
                                <div class="left_icon">
                                    <img src="./img/3.jpeg" alt="">
                                    <span class="icon_v"></span>
                                </div>
                                <div class="right_text">
                                    <p>
                                        我是疯了才去你的城市，然后哭着回来 | 24个没有你的城市故事</p>
                                    <span>新世相</span> <span>5小时前</span>
                                </div>
                            </li>
                            <li class="clear_fix">
                                <div class="left_icon">
                                    <img src="./img/4.jpeg" alt="">
                                    <span class="icon_v"></span>
                                </div>
                                <div class="right_text">
                                    <p>
                                        吴亦凡不为人知的特别才艺居然是魔术?</p>
                                    <span>QG娱乐</span> <span>刚刚</span>
                                </div>
                            </li>
                            <li class="clear_fix">
                                <div class="left_icon">
                                    <img src="./img/5.jpeg" alt="">
                                    <span class="icon_v"></span>
                                </div>
                                <div class="right_text">
                                    <p>
                                        国外的“糖葫芦”、“煎饼馃子”都长啥样？</p>
                                    <span>果壳网</span> <span>一分钟前</span>
                                </div>
                            </li>
                            <li class="clear_fix">
                                <div class="left_icon">
                                    <img src="./img/6.jpeg" alt="">
                                    <span class="icon_v"></span>
                                </div>
                                <div class="right_text">
                                    <p>
                                        我是疯了才去你的城市，然后哭着回来 | 24个没有你的城市故事</p>
                                    <span>新世相</span> <span>昨天</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="content_mid">
                        <h4>
                            热文排行</h4>
                        <ul>
                            <li><a href="#">
                                <div class="icon icon1">
                                </div>
                                <p>
                                    新京报："伺候老师应不应当"是冷血无聊的伪问题</p>
                            </a></li>
                            <li><a href="#">
                                <div class="icon icon2">
                                </div>
                                <p>
                                    重庆官媒再批"孙政才的问题" 这次点出具体事情</p>
                            </a></li>
                            <li><a href="#">
                                <div class="icon icon3">
                                </div>
                                <p>
                                    新京报："伺候老师应不应当"是冷血无聊的伪问题</p>
                            </a></li>
                            <li><a href="#">
                                <div class="icon icon4">
                                </div>
                                <p>
                                    新京报："伺候老师应不应当"是冷血无聊的伪问题</p>
                            </a></li>
                            <li><a href="#">
                                <div class="icon icon5">
                                </div>
                                <p>
                                    新京报："伺候老师应不应当"是冷血无聊的伪问题</p>
                            </a></li>
                        </ul>
                    </div>
                    <div class="content_mid">
                        <h4>
                            热门视频</h4>
                        <ul>
                            <li class="clear_fix">
                                <div class="left_img">
                                    <img src="./img/7.jpeg" alt="">
                                </div>
                                <div class="detial_text">
                                    <p>
                                        小偷进门后遇到这样的女主人，什么都没偷到也值了</p>
                                    <span>214评论</span> <span>2018.1.20</span>
                                </div>
                            </li>
                            <li class="clear_fix">
                                <div class="left_img">
                                    <img src="./img/8.jpeg" alt="">
                                </div>
                                <div class="detial_text">
                                    <p>
                                        家里有电动车的注意了：几元钱让你十年不用更换新电瓶</p>
                                    <span>214评论</span> <span>2018.1.20</span>
                                </div>
                            </li>
                            <li class="clear_fix">
                                <div class="left_img">
                                    <img src="./img/9.jpeg" alt="">
                                </div>
                                <div class="detial_text">
                                    <p>
                                        史上最贱的女人，这种人怎么没被打死</p>
                                    <span>214评论</span> <span>2018.1.20</span>
                                </div>
                            </li>
                            <li class="clear_fix">
                                <div class="left_img">
                                    <img src="./img/10.jpeg" alt="">
                                </div>
                                <div class="detial_text">
                                    <p>
                                        牌穿过钞票, 钞票完好无损! 原来这个魔术这么简单</p>
                                    <span>114评论</span> <span>2018.1.10</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="content_mid">
                        <h4>
                            热文排行</h4>
                        <ul>
                            <li><a href="#">
                                <div class="icon icon1">
                                </div>
                                <p>
                                    新京报："伺候老师应不应当"是冷血无聊的伪问题</p>
                            </a></li>
                            <li><a href="#">
                                <div class="icon icon2">
                                </div>
                                <p>
                                    重庆官媒再批"孙政才的问题" 这次点出具体事情</p>
                            </a></li>
                            <li><a href="#">
                                <div class="icon icon3">
                                </div>
                                <p>
                                    新京报："伺候老师应不应当"是冷血无聊的伪问题</p>
                            </a></li>
                            <li><a href="#">
                                <div class="icon icon4">
                                </div>
                                <p>
                                    新京报："伺候老师应不应当"是冷血无聊的伪问题</p>
                            </a></li>
                            <li><a href="#">
                                <div class="icon icon5">
                                </div>
                                <p>
                                    新京报："伺候老师应不应当"是冷血无聊的伪问题</p>
                            </a></li>
                        </ul>
                    </div>
                    <div class="content_mid">
                        <h4>
                            热门视频</h4>
                        <ul>
                            <li class="clear_fix">
                                <div class="left_img">
                                    <img src="./img/7.jpeg" alt="">
                                </div>
                                <div class="detial_text">
                                    <p>
                                        小偷进门后遇到这样的女主人，什么都没偷到也值了</p>
                                    <span>214评论</span> <span>2018.1.20</span>
                                </div>
                            </li>
                            <li class="clear_fix">
                                <div class="left_img">
                                    <img src="./img/8.jpeg" alt="">
                                </div>
                                <div class="detial_text">
                                    <p>
                                        家里有电动车的注意了：几元钱让你十年不用更换新电瓶</p>
                                    <span>214评论</span> <span>2018.1.20</span>
                                </div>
                            </li>
                            <li class="clear_fix">
                                <div class="left_img">
                                    <img src="./img/9.jpeg" alt="">
                                </div>
                                <div class="detial_text">
                                    <p>
                                        史上最贱的女人，这种人怎么没被打死</p>
                                    <span>214评论</span> <span>2018.1.20</span>
                                </div>
                            </li>
                            <li class="clear_fix">
                                <div class="left_img">
                                    <img src="./img/10.jpeg" alt="">
                                </div>
                                <div class="detial_text">
                                    <p>
                                        牌穿过钞票, 钞票完好无损! 原来这个魔术这么简单</p>
                                    <span>114评论</span> <span>2018.1.10</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--悬浮图标-->
        <div class="fix_icon">
            <div class="first_icon">
                <img src="./img/rotate.png" alt="">
            </div>
            <div class="second_icon">
                <img src="./img/二维码.png" alt="">
            </div>
            <div class="three_icon">
                <img src="./img/向上.png" alt="">
            </div>
        </div>
        <a href="../设计/index.html" style="margin: 50px 0 50px 750px; display: block;">设计链接</a>
    </div>
    <div class="mask">
    </div>
    <div class="loginIn">
        <div class="login_Input">
            <div class="login_close">
                <img src="./img/close.png" alt=""></div>
            <div class="login_header">
                <img src="./img/logo.png" alt="">
                <h1>
                    一點資訊</h1>
            </div>
            <div class="login_content">
                <input type="text" placeholder="手機號">
                <input type="text" placeholder="驗證碼" class="tel">
                <img src="./img/validate.png" alt="" class="validate">
                <input type="text" placeholder="手機驗證碼" class="tel_validate">
                <input type='text' placeholder="发送验证码" class="send">
            </div>
            <div class="login_text">
                <div class="img_input ">
                    <img src="./img/img_text.png" alt="" class="img_close">
                </div>
                <div class="degree">
                    <span>我已閱讀并同意用戶协议</span></div>
            </div>
            <div class="login_btn">
                登录</div>
            <p>
                账号密码登录</p>
            <div class="third_login">
                <span class="line"></span><span>第三方平台登录</span> <span class="line"></span>
            </div>
            <div class="login_footer">
                <img src="./img/新浪.png" alt="">
                <img src="./img/QQ.png" alt="">
                <img src="./img/小米.png" alt="">
            </div>
        </div>
    </div>
</body>
</html>
