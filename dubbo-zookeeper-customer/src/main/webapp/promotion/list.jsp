<%--
  Created by IntelliJ IDEA.
  User: 季春阳
  Date: 2018/4/9
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
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
<div id="addxxx"></div>
<a id="addpromotion" onclick="addpromotion()"herf="#"    class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a>
<a id="deletepromotion" onclick="deletepromotion()"    class="easyui-linkbutton" data-options="iconCls:'icon-delete'">删除</a>
<a id="refreshPromotionlist" onclick="refreshPromotionlist()"    class="easyui-linkbutton" data-options="iconCls:'icon-arrow_refresh'">刷新</a>
        <table id="promotiontable"></table>

        <script type="text/javascript">
            $(function (){
                query();
            })

               function query(){

                $('#promotiontable').datagrid({
                url:'<%=request.getContextPath()%>/userController/promotionList.do',
                columns:[[
                    {field:'aa',title:'',checkbox:true},
                {field:'name',title:'名称',width:100},
                {field:'title',title:'标题',width:100},
                {field:'begin_date',title:'起始日期',width:100},
                {field:'end_date',title:'结束日期',width:100},
                {field:'orders',title:'排序',width:100},
                {field:'xxx',title:'操作',width:100,
                    formatter: function(value,row,index){
                        return "<a  href=‘<%=request.getContextPath()%>/userController/updatethisPromotion.do’>[编辑]</a>";
                    },
                }

                ]],
                pagination:true,
                pageNumber:1,
                pageSize:3,
                pageList:[3,1,7],
                queryParams: {
                "title": $("#zjmc").val(),
                "name":$("[name='hmdhponenum']").val()
                },

                });

                }
            function addpromotion(){
                $('#addxxx').dialog({
                    title: '基本信息',
                    width: 1000,
                    height: 600,
                    closed: false,
                    cache: false,
                    href: '<%=request.getContextPath()%>/promotion/addpromotion.jsp',
                    modal: true ,
                    buttons:[{
                        text:'保存',
                        handler:function(){
                            $.messager.confirm('确认','您确认添加信息吗？',function(r){
                                if (r){
                                    $('#useruForm').form('submit', {
                                        url:"<%=request.getContextPath()%>/userAction!addUserunew.action",
                                        onSubmit: function(){
                                            return $('#useruForm').form('validate');
                                        },
                                        success:function(data){

                                            $('#dd7').dialog("close");
                                            $('#useruTable6').datagrid('reload')
                                            $.messager.show({
                                                title:'添加',
                                                msg:'添加成功',
                                                timeout:1000,
                                                showType:'show'
                                            });

                                        }
                                    });
                                }
                            });
                        }
                    },{
                        text:'关闭',
                        handler:function(){
                            $('#dd7').dialog("close");
                        }
                    }]
                });
            }
       </script>
</body>
</html>
