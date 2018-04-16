<%--
  Created by IntelliJ IDEA.
  User: 季春阳
  Date: 2018/4/9
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/EasyUI/themes/default/easyui.css" type="text/css"/>

    <!-- 引入EasyUI的图标样式文件-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/EasyUI/themes/icon.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/kindeditor/themes/default/default.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/kindeditor/plugins/code/prettify.css" />


</head>
<body>
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

<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/lang/zh-CN.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/plugins/code/prettify.js"></script>

<form  method="post" id="addPromotion">
<div id="tt" class="easyui-tabs">
    <div title="基本信息" style="padding:20px;display:none;">
        <table bord>
            <tr>
                <td><font color="red">*</font>名称</td>
                <td>
                    <input class="easyui-validatebox" name="name"  data-options="required:true,validType:'text'"/>
                </td>
            </tr>
            <tr>
                <td><font color="red">*</font>标题</td>
                <td><input class="easyui-validatebox" name="title"  data-options="required:true,validType:'text'"/></td>
            </tr>
            <tr>
                <td>起始日期</td>
                <td><input id="time1" class="Wdate" name="begin_date"  onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'time2\')||\'2020-10-01\'}'})"/> </td>
            </tr>
            <tr>
                <td>结束日期</td>
                <td><input id="time2" class="Wdate" name="end_date" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'time1\')}',maxDate:'2020-10-01'})"/> </td>
            </tr>
            <tr>
                <td>最小商品数量</td>
                <td><input type="text" name="minimum_quantity"/> </td>
            </tr>
            <tr>
                <td>最大商品数量</td>
                <td><input type="text" name="maximum_quantity"/> </td>
            </tr>
            <tr>
                <td>最小商品价格</td>
                <td><input type="text" name="minimum_price"/> </td>
            </tr>
            <tr>
                <td>最大商品价格</td>
                <td><input type="text" name="maximum_price"/> </td>
            </tr>
            <tr>
                <td>价格运算表达式</td>
                <td><input type="text" name="price_expression"/> </td>
            </tr>
            <tr>
                <td>积分运算表达式</td>
                <td><input type="text" name="point_expression"/> </td>
            </tr>
            <tr>
                <td>排序</td>
                <td><input type="text" name="orders"/> </td>
            </tr>
            <tr>
                <td>允许参加会员等级</td>
                <td><span id="xxxx"></span></td>
            </tr>
            <tr>
                <td>允许参与商品分类</td>
                <td><span id="yyyy"></span></td>
            </tr>
            <tr>
                <td>允许参与商品分类</td>
                <td><span id="zzzz"></span></td>
            </tr>
            <tr>
                <td COLSPAN="2">赠送优惠券</td>
            </tr>
            <tr>
                <td>设置</td>
                <td><input type="checkbox" value="1" name="is_coupon_allowed">是否免运费
                    <input type="checkbox" value="1" name="is_free_shipping">是否允许使用优惠券
                </td>
            </tr>
           <%-- <tr>
                <td>允许参与商品</td>
                <td><input type="text" name="is_coupon_allowed"/></td>
            </tr>
            <tr>
                <td>赠品</td>
                <td><input type="text" name="is_free_shipping"/></td>
            </tr>--%>
        </table>
    </div>
    <div title="介绍" data-options="closable:true" style="overflow:auto;padding:20px;display:none;">
        <%-- <textarea id="editor" name="introduction" style="width:600px;height:400px;">
         </textarea>--%>
        <textarea   name="introduction"  style=" width:700px;height:200px;"> </textarea>
            <input type="button" value="确定" onclick="addpromotion()"/>
            <input type="button" value="返回" onclick="backtolistjsp()"/>
    </div>

    </form>

</div>

    <script type="text/javascript">
        /*富文本编辑器*/
        KindEditor.ready(function(K) {
            var editor1 = K.create('textarea[name="introduction"]', {
                cssPath : 'kindeditor/plugins/code/prettify.css',
                uploadJson : 'kindeditor/jsp/upload_json.jsp',
                fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp',
                allowFileManager : true,
                //将富文本编辑中的内容同步到表单序列化中
                afterBlur:function(){this.sync();}
            });

            prettyPrint();

            editor1.html("<strong><span style='font-size:24px;'></span></strong>")
        });
        /*富文本编辑器*/
        function addpromotion(){
            $.ajax({
                url:"<%=request.getContextPath()%>/userController/addpromotion.do",
                type:"post",
                data:$("#addPromotion").serialize(),
                dataType:"json",
                success:function(){
                    location.href="<%=request.getContextPath()%>/userController/topromotionList.do";
                },
                error:function(){
                    alert("后台错误")
                }

            })

        }

        $(function(){

            $.ajax({
                url:"<%=request.getContextPath()%>/userController/queryLevel.do",
                type:"post",
                dataType:"json",
                success:function(data){

                    var tr="";
                    var aa=0;
                    for(var i=0;i<data.length;i++){
                        aa++;
                        tr += "<tr><td><input type='checkbox' name='checks' value='"+data[i].id+"'/></td><td>"+data[i].namess+"</td></tr>";
                        if(aa%8==0){
                            tr +="<br>";
                        }
                    }
                    $("#xxxx").html(tr);
                }
            })
            $.ajax({
                url:"<%=request.getContextPath()%>/userController/queryCategory.do",
                type:"post",
                dataType:"json",
                success:function(data){

                    var tr="";
                    var aa=0;
                    for(var i=0;i<data.length;i++){
                        aa++;
                        tr += "<tr><td><input type='checkbox' name='checks' value='"+data[i].id+"'/></td><td>"+data[i].name+"</td></tr>";
                        if(aa%8==0){
                            tr +="<br>";
                        }
                    }
                    $("#yyyy").html(tr);
                }
            })
            $.ajax({
                url:"<%=request.getContextPath()%>/userController/queryBrand.do",
                type:"post",
                dataType:"json",
                success:function(data){

                    var tr="";
                    var aa=0;
                    for(var i=0;i<data.length;i++){
                        aa++;
                        tr += "<tr><td><input type='checkbox' name='checks' value='"+data[i].id+"'/></td><td>"+data[i].name+"</td></tr>";
                        if(aa%8==0){
                            tr +="<br>";
                        }
                    }
                    $("#zzzz").html(tr);
                }
            })

        })



    </script>



</body>
</html>
