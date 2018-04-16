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




    <script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
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
<input id="ss" class="easyui-searchbox" style="width:300px"
       data-options="searcher:qq,prompt:'Please Input Value',menu:'#mm'" onclick="serachBytiaojian()"></input>
<div id="mm" style="width:800px">
    <div data-options="name:'name',iconCls:'icon-ok'">名称</div>
    <div data-options="name:'title'">标题</div>
</div>
<table id="promotiontable"></table>

        <script type="text/javascript">
            function refreshPromotionlist(){
                query();
            }
            /**
             * 条件搜索框查询
             * @param value
             * @param name
             */
            function qq(value,name){
               // alert(value+":"+name)
                query();
            }

            /**
             * 页面加载查询
             */
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
                            return "<a href = 'javascript:void(0)' onclick='showBackPromotion("+row.id+")'>[编辑]</a>"
                        },
                    }

                    ]],
                    pagination:true,
                    pageNumber:1,
                    pageSize:3,
                    pageList:[3,1,7],
                    queryParams: {
                    "title": $("#ss").val(),
                    "name":$("#ss").val()
                    },

                    });

                }
            function addpromotion(){
                location.href="<%=request.getContextPath()%>/promotion/addpromotion.jsp";
            }
            /* function addpromotion(){
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
                                    $('#addPromotion').form('submit', {
                                        url:"<%=request.getContextPath()%>/userController/addpromotion.do",
                                        onSubmit: function(){
                                            return $('#useruForm').form('validate');
                                        },
                                        success:function(data){

                                            $('#addxxx').dialog("close");
                                            query();
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
                            $('#addxxx').dialog("close");
                        }
                    }]
                });
            }*/
            /**
             * 删除
             */
            function deletepromotion(){
                var arr = $('#promotiontable').datagrid("getSelections")
                var id = "";
                var count = arr.length
                for (var i = 0; i < arr.length; i++) {
                    id += ","+arr[i].id;
                }
                /*var aa = id.substr(1);*/
                alert(id)
                $.messager.confirm('确认','您确认删除这'+count+'条数据？',function(r){
                    if (r){
                        $.ajax({
                            url:'<%=request.getContextPath()%>/userController/deletepromotion.do',
                            type:"post",
                            data:{"name":id},
                            dataType:"text",
                            success:function(add){
                                if(add >= 1){

                                    $.messager.show({
                                        title:'删除',
                                        msg:'成功删除'+count+'数据',
                                        timeout:1000,
                                        showType:'show'
                                    });

                                }
                                query();

                            },
                            error:function(){
                                alert("xxxx")
                            }
                        });
                    }
                });
            }
            function showBackPromotion(id){
                location.href="<%=request.getContextPath()%>/userController/showBackPromotion.do?id="+id;
            }


       </script>
</body>
</html>
