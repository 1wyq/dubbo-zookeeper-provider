<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/EasyUI/themes/default/easyui.css" type="text/css"/>

    <!-- 引入EasyUI的图标样式文件-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/EasyUI/themes/icon.css" type="text/css"/>
</head>
<body class="easyui-layout">
<div data-options="region:'north',iconCls:'icon-add',title:'North Title',split:true" style="height:90px;">
    <div style="float: left">
        <img src="/images/header_logo.gif" alt="SHOP++"  />
    </div>
    <div class="tit" style="float: left ;margin-top:20px;margin-left: 50px ">
       <%-- <input type="button" onclick="showleft1()" value="商品"/>&nbsp;&nbsp;&nbsp;&nbsp;--%>

           <span style="font-size:24px;color:#cc0000;"><strong><a onclick="showleft1()" style=" text-decoration: none;" href="#">商品</a></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
           <span style="font-size:24px;color:#cc0000;"><strong><a onclick="showleft2()" style=" text-decoration: none;" href="#">订单</a></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
           <span style="font-size:24px;color:#cc0000;"><strong><a onclick="showleft3()" style=" text-decoration: none;" href="#">会员</a></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
           <span style="font-size:24px;color:#cc0000;"><strong><a onclick="showleft4()" style=" text-decoration: none;" href="#">内容</a></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
           <span style="font-size:24px;color:#cc0000;"><strong><a onclick="showleft5()" style=" text-decoration: none;" href="#">营销</a></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
           <span style="font-size:24px;color:#cc0000;"><strong><a onclick="showleft6()" style=" text-decoration: none;" href="#">统计</a></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
           <span style="font-size:24px;color:#cc0000;"><strong><a onclick="showleft7()" style=" text-decoration: none;" href="#">系统</a></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;
           <span style="font-size:24px;color:#cc0000;"><strong><a onclick="showleft8()" style=" text-decoration: none;" href="#">首页</a></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;

    </div>


</div>
<div data-options="region:'west',title:'菜单',split:true" style="width:200px;" >
    <!-- <a href="javascript:addTabs('tab1.jsp','学生列表')">学生列表</a>
    <a href="javascript:addTabs('tab2.jsp','班级列表')">班级列表</a> -->
    <!-- <input class="easyui-switchbutton" checked>  -->
    <div id="productdiv" style="display: none">
        <dl id="product" class="default">
            <dt>商品管理</dt>
            <dd>
                <a href="../product/list.jhtml" target="iframe">商品管理</a>
            </dd>
            <dd>
                <a href="../product_category/list.jhtml" target="iframe">商品分类</a>
            </dd>
            <dd></dd>
            <dd>
                <a href="../parameter_group/list.jhtml" target="iframe">商品参数</a>
            </dd>
            <dd>
                <a href="../attribute/list.jhtml" target="iframe">商品属性</a>
            </dd>
            <dd>
                <a href="../specification/list.jhtml" target="iframe">规格管理</a>
            </dd>
            <dd>
                <a href="../brand/list.jhtml" target="iframe">品牌管理</a>
            </dd>
            <dd>
                <a href="../product_notify/list.jhtml" target="iframe">到货通知</a>
            </dd>
        </dl>
    </div>
    <div id="orderdiv" style="display: none">
        <dl id="order">
            <dt>订单管理</dt>
            <dd>
                <a href="../order/list.jhtml" target="iframe">订单管理</a>
            </dd>
            <dd>
                <a href="../payment/list.jhtml" target="iframe">收款管理</a>
            </dd>
            <dd>
                <a href="../refunds/list.jhtml" target="iframe">退款管理</a>
            </dd>
            <dd>
                <a href="../shipping/list.jhtml" target="iframe">发货管理</a>
            </dd>
            <dd>
                <a href="../returns/list.jhtml" target="iframe">退货管理</a>
            </dd>
            <dd>
                <a href="../delivery_center/list.jhtml" target="iframe">发货点管理</a>
            </dd>
            <dd>
                <a href="../delivery_template/list.jhtml" target="iframe">快递单模板</a>
            </dd>
        </dl>
    </div>
    <div id="memberdiv" style="display: none">
        <dl id="member">
            <dt>会员管理</dt>
            <dd>
                <a href="../member/list.jhtml" target="iframe">会员管理</a>
            </dd>
            <dd>
                <a href="../member_rank/list.jhtml" target="iframe">会员等级</a>
            </dd>
            <dd>
                <a href="../member_attribute/list.jhtml" target="iframe">会员注册项</a>
            </dd>
            <dd>
                <a href="../review/list.jhtml" target="iframe">评论管理</a>
            </dd>
            <dd>
                <a href="../consultation/list.jhtml" target="iframe">咨询管理</a>
            </dd>
        </dl>
    </div>
    <div id="contentdiv" style="display: none">
        <dl id="content">
            <dt>内容管理</dt>
            <dd>
                <a href="../navigation/list.jhtml" target="iframe">导航管理</a>
            </dd>
            <dd>
                <a href="../article/list.jhtml" target="iframe">文章管理</a>
            </dd>
            <dd>
                <a href="../article_category/list.jhtml" target="iframe">文章分类</a>
            </dd>
            <dd>
                <a href="../tag/list.jhtml" target="iframe">标签管理</a>
            </dd>
            <dd>
                <a href="../friend_link/list.jhtml" target="iframe">友情链接</a>
            </dd>
            <dd>
                <a href="../ad_position/list.jhtml" target="iframe">广告位</a>
            </dd>
            <dd>
                <a href="../ad/list.jhtml" target="iframe">广告管理</a>
            </dd>
            <dd>
                <a href="../template/list.jhtml" target="iframe">模板管理</a>
            </dd>
            <dd>
                <a href="../cache/clear.jhtml" target="iframe">缓存管理</a>
            </dd>
            <dd>
                <a href="../static/build.jhtml" target="iframe">静态化管理</a>
            </dd>
            <dd>
                <a href="../index/build.jhtml" target="iframe">索引管理</a>
            </dd>
        </dl>
    </div>
    <div id="marketingdiv" style="display: none">
        <dl id="marketing">
            <dt>营销管理</dt>
            <dd>
                <a href="<%=request.getContextPath()%>/userController/topromotionList.do" target="iframe">促销管理</a>
            </dd>
            <dd>
                <a href="../coupon/list.jhtml" target="iframe">优惠券管理</a>
            </dd>
            <dd>
                <a href="<%=request.getContextPath()%>/userController/toSeoList.do" target="iframe">SEO设置</a>
            </dd>
            <dd>
                <a href="../sitemap/build.jhtml" target="iframe">Sitemap管理</a>
            </dd>
        </dl>
    </div>
    <div id="statisticsdiv" style="display: none">
        <dl id="statistics">
            <dt>统计报表</dt>
            <dd>
                <a href="../statistics/view.jhtml" target="iframe">访问统计</a>
            </dd>
            <dd>
                <a href="../statistics/setting.jhtml" target="iframe">统计设置</a>
            </dd>
            <dd>
                <a href="../sales/view.jhtml" target="iframe">销售统计</a>
            </dd>
            <dd>
                <a href="../sales_ranking/list.jhtml" target="iframe">销售排行</a>
            </dd>
            <dd>
                <a href="../purchase_ranking/list.jhtml" target="iframe">消费排行</a>
            </dd>
            <dd>
                <a href="../deposit/list.jhtml" target="iframe">预存款</a>
            </dd>
        </dl>
    </div>
    <div id="systemdiv" style="display: none">
        <dl id="system">
            <dt>系统设置</dt>
            <dd>
                <a href="../setting/edit.jhtml" target="iframe">系统设置</a>
            </dd>
            <dd>
                <a href="../area/list.jhtml" target="iframe">地区管理</a>
            </dd>
            <dd>
                <a href="../payment_method/list.jhtml" target="iframe">支付方式</a>
            </dd>
            <dd>
                <a href="../shipping_method/list.jhtml" target="iframe">配送方式</a>
            </dd>
            <dd>
                <a href="../delivery_corp/list.jhtml" target="iframe">物流公司</a>
            </dd>
            <dd>
                <a href="../payment_plugin/list.jhtml" target="iframe">支付插件</a>
            </dd>
            <dd>
                <a href="../storage_plugin/list.jhtml" target="iframe">存储插件</a>
            </dd>
            <dd>
                <a href="../admin/list.jhtml" target="iframe">管理员</a>
            </dd>
            <dd>
                <a href="../role/list.jhtml" target="iframe">角色管理</a>
            </dd>
            <dd>
                <a href="../message/send.jhtml" target="iframe">发送消息</a>
            </dd>
            <dd>
                <a href="../message/list.jhtml" target="iframe">消息列表</a>
            </dd>
            <dd>
                <a href="../message/draft.jhtml" target="iframe">草稿箱</a>
            </dd>
            <dd>
                <a href="../log/list.jhtml" target="iframe">日志管理</a>
            </dd>
        </dl>
    </div>



</div>

<div data-options="region:'center',title:'购物系统'" style="padding:5px;background:#eee;" >
    <iframe id="iframe" name="iframe" src="index.jhtml" frameborder="0" style="height:700px;width:1600px"></iframe>
       <%-- <div id="iframe" >
            <center>
                <br>  <br><br> <br> <br>
                <div title="Tab1" > <font size='7' color="#0000ff">欢迎你来到购物系统</font></div>
            </center>
        </div>--%>

</div>

<!-- 引入JQuery -->
<script type="text/javascript"
        src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>

<!-- 引入EasyUI -->
<script type="text/javascript"
        src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>

<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript"
        src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>

<script type="text/javascript">
    $(function(){
        showleft1();
    })
    function showleft1(){
        document.getElementById("productdiv").style.display="block";
        document.getElementById("orderdiv").style.display="none";
        document.getElementById("memberdiv").style.display="none";
        document.getElementById("contentdiv").style.display="none";
        document.getElementById("marketingdiv").style.display="none";
        document.getElementById("statisticsdiv").style.display="none";
        document.getElementById("systemdiv").style.display="none";
          /* $("#productdiv").style.display="block";*/
    }
    function showleft2(){
        document.getElementById("orderdiv").style.display="block";
        document.getElementById("productdiv").style.display="none";
        document.getElementById("memberdiv").style.display="none";
        document.getElementById("contentdiv").style.display="none";
        document.getElementById("marketingdiv").style.display="none";
        document.getElementById("statisticsdiv").style.display="none";
        document.getElementById("systemdiv").style.display="none";
        /* $("#productdiv").style.display="block";*/
    }
    function showleft3(){
        document.getElementById("memberdiv").style.display="block";
        document.getElementById("productdiv").style.display="none";
        document.getElementById("orderdiv").style.display="none";
        document.getElementById("contentdiv").style.display="none";
        document.getElementById("marketingdiv").style.display="none";
        document.getElementById("statisticsdiv").style.display="none";
        document.getElementById("systemdiv").style.display="none";
        /* $("#productdiv").style.display="block";*/
    }
    function showleft4(){
        document.getElementById("contentdiv").style.display="block";
        document.getElementById("memberdiv").style.display="none";
        document.getElementById("productdiv").style.display="none";
        document.getElementById("orderdiv").style.display="none";
        document.getElementById("marketingdiv").style.display="none";
        document.getElementById("statisticsdiv").style.display="none";
        document.getElementById("systemdiv").style.display="none";
        /* $("#productdiv").style.display="block";*/
    }
    function showleft5(){
        document.getElementById("marketingdiv").style.display="block";
        document.getElementById("memberdiv").style.display="none";
        document.getElementById("productdiv").style.display="none";
        document.getElementById("orderdiv").style.display="none";
        document.getElementById("contentdiv").style.display="none";
        document.getElementById("statisticsdiv").style.display="none";
        document.getElementById("systemdiv").style.display="none";
        /* $("#productdiv").style.display="block";*/
    }
    function showleft6(){
        document.getElementById("statisticsdiv").style.display="block";
        document.getElementById("memberdiv").style.display="none";
        document.getElementById("productdiv").style.display="none";
        document.getElementById("orderdiv").style.display="none";
        document.getElementById("contentdiv").style.display="none";
        document.getElementById("marketingdiv").style.display="none";
        document.getElementById("systemdiv").style.display="none";
        /* $("#productdiv").style.display="block";*/
    }

    function showleft7(){
        document.getElementById("systemdiv").style.display="block";
        document.getElementById("memberdiv").style.display="none";
        document.getElementById("productdiv").style.display="none";
        document.getElementById("orderdiv").style.display="none";
        document.getElementById("contentdiv").style.display="none";
        document.getElementById("marketingdiv").style.display="none";
        document.getElementById("statisticsdiv").style.display="none";
        /* $("#productdiv").style.display="block";*/
    }

</script>
</body>
</html>