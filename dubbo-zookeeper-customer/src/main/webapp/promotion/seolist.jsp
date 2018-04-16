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


    <script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js""></script>
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
    <div id="updateSeodialog"></div>



    <table id="seotable"></table>

    <script type="text/javascript">

        /**
         * 页面加载查询
         */
        $(function (){
            query();
        })

        function query(){

            $('#seotable').datagrid({
                url:'<%=request.getContextPath()%>/userController/seoList.do',
                columns:[[

                    {field:'typename',title:'类型',width:200},
                    {field:'title',title:'页面标题',width:200},
                    {field:'keywords',title:'页面关键词',width:200},
                    {field:'description',title:'页面描述',width:200},
                    {field:'xxx',title:'操作',width:200,
                        formatter: function(value,row,index){
                           // return "<a  href=‘<%=request.getContextPath()%>/userController/querySeoByid.do’>[编辑]</a>";
                            return "<a href = 'javascript:void(0)' onclick='showBackSeo("+row.id+",\""+row.typename+"\")'>[编辑]</a>"
                        },
                    }

                ]],
                pagination:true,
                pageNumber:1,
                pageSize:3,
                pageList:[3,1,7],


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

        /**
         * 删除
         */

        }
        function showBackSeo(id,name){

            $('#updateSeodialog').dialog({
                title: '修改信息',
                width: 400,
                height: 200,
                closed: false,
                cache: false,

                href:'<%=request.getContextPath()%>/userController/showBackSeo.do?id='+id+'&typename='+name,
                modal: true,
                buttons:[{
                    text:'确定',
                    handler:function(){
                        $.messager.confirm('确认','您确认修改记录吗？',function(r){
                            if (r){
                                $.ajax({
                                    url:'<%=request.getContextPath()%>/userController/updateThisSeo.do',
                                    type:"post",
                                    data:$("#updateSeotable").serialize(),
                                    dataType:"text",
                                    success:function(add){
                                        if(add == 1){
                                            $("#updateSeodialog").dialog("close");
                                            query();
                                            $.messager.show({
                                                title:'修改',
                                                msg:'修改成功',
                                                timeout:1000,
                                                showType:'show'
                                            });
                                        }
                                    },
                                    error:function(){
                                        alert("xxxx")
                                    }
                                });
                            }
                        });
                    }

                },{
                    text:'返回',
                    handler:function(){
                        $("#updateSeodialog").dialog("close")
                    }
                }]
            });
        }
        /**
         * 富文本编辑器
         */


    </script>
    </body>
</html>
