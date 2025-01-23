<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto"></ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑缴费</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">缴费管理</li>
                        <li class="breadcrumb-item active">编辑缴费</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">缴费信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa banji">
                                        <label>班级</label>
                                        <div>
                                            <select style="width: 450px" id="banjiSelect" name="banjiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 banji">
                                        <label>班级编号</label>
                                        <input style="width: 450px" id="banjiUuidNumber" name="banjiUuidNumber" placeholder="班级编号" class="form-control" readonly>
                                    </div>
                                    <div class="form-group col-md-6 banji">
                                        <label>班级名称</label>
                                        <input style="width: 450px" id="banjiName" name="banjiName" placeholder="班级名称" class="form-control" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa laoshi">
                                        <label>老师</label>
                                        <div>
                                            <select style="width: 450px" id="laoshiSelect" name="laoshiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>老师姓名</label>
                                        <input style="width: 450px" id="laoshiName" name="laoshiName" placeholder="老师姓名" class="form-control" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>老师手机号</label>
                                        <input style="width: 450px" id="laoshiPhone" name="laoshiPhone" placeholder="老师手机号" class="form-control" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>老师头像</label>
                                        <img id="laoshiPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa yonghu">
                                        <label>学生</label>
                                        <div>
                                            <select style="width: 450px" id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>学生姓名</label>
                                        <input style="width: 450px" id="yonghuName" name="yonghuName" placeholder="学生姓名" class="form-control" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>学生手机号</label>
                                        <input style="width: 450px" id="yonghuPhone" name="yonghuPhone" placeholder="学生手机号" class="form-control" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>学生头像</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>余额</label>
                                        <input style="width: 450px" id="newMoney" name="newMoney" placeholder="余额" class="form-control" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                <input id="laoshiId" name="laoshiId" type="hidden">
                                <input id="banjiId" name="banjiId" type="hidden">
                                    <div class="form-group col-md-6 feiyongNameDiv">
                                        <label>缴费</label>
                                        <input style="width: 450px" id="feiyongName" name="feiyongName" class="form-control"
                                               placeholder="缴费">
                                    </div>
                                    <div class="form-group col-md-6 feiyongTypesDiv">
                                        <label>缴费类型</label>
                                        <select style="width: 450px" id="feiyongTypesSelect" name="feiyongTypes" class="form-control"></select>
                                    </div>
                                    <div class="form-group col-md-6 feiyongZhuangtaiTypesDiv">
                                        <label>缴费状态</label>
                                        <select style="width: 450px" id="feiyongZhuangtaiTypesSelect" name="feiyongZhuangtaiTypes" class="form-control"></select>
                                    </div>
                                    <div class="form-group col-md-6 feiyongOldMoneyDiv">
                                        <label>缴费金额</label>
                                        <input style="width: 450px" id="feiyongOldMoney" name="feiyongOldMoney" class="form-control"
                                               onchange="doubleChickValue(this)" placeholder="缴费金额">
                                    </div>
                                    <div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/js/validate/card.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js" type="text/javascript" charset="utf-8"></script>
<!-- <script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script> -->
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file = "../../static/utils.js" %>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var sessionTable = window.sessionStorage.getItem("accountTableName");//登录账户所在表名
    var role         = window.sessionStorage.getItem("role");//权限
    var userId       = window.sessionStorage.getItem("userId");//当前登录人的id
    var tableName = "feiyong";
    var pageType = "add-or-update";
    var updateId = "";
    var ruleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var feiyongTypesOptions = [];
    var feiyongZhuangtaiTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var banjiOptions = [];
    var laoshiOptions = [];
    var yonghuOptions = [];

    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '学生'){//当前登录用户不为这个
                if($("#yonghuId") !=null){
                    var yonghuId = $("#yonghuId").val();
                    if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                        layui.layer.msg("学生不能为空", {time: 2000,icon: 5});
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '老师'){//当前登录用户不为这个
                if($("#laoshiId") !=null){
                    var laoshiId = $("#laoshiId").val();
                    if(laoshiId == null || laoshiId =='' || laoshiId == 'null'){
                        layui.layer.msg("老师不能为空", {time: 2000,icon: 5});
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '班级'){//当前登录用户不为这个
                if($("#banjiId") !=null){
                    var banjiId = $("#banjiId").val();
                    if(banjiId == null || banjiId =='' || banjiId == 'null'){
                        layui.layer.msg("班级不能为空", {time: 2000,icon: 5});
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("feiyong/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addfeiyong');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        layui.layer.msg(successMes, {time: 2000,icon: 5});
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            layui.layer.msg("表单未填完整或有错误", {time: 2000,icon: 5});
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function feiyongTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=feiyong_types", "GET", {}, (res) => {
                if(res.code == 0){
                    feiyongTypesOptions = res.data.list;
                }
            });
        }
        function feiyongZhuangtaiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=feiyong_zhuangtai_types", "GET", {}, (res) => {
                if(res.code == 0){
                    feiyongZhuangtaiTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function banjiSelect() {
            //填充下拉框选项
            http("banji/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    banjiOptions = res.data.list;
                }
            });
        }

        function banjiSelectOne(id) {
            http("banji/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                    ruleForm = res.data;
                    banjiShowImg();
                    banjiShowVideo();
                    banjiDataBind();
                }
            });
        }
        function laoshiSelect() {
            //填充下拉框选项
            http("laoshi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    laoshiOptions = res.data.list;
                }
            });
        }

        function laoshiSelectOne(id) {
            http("laoshi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                    ruleForm = res.data;
                    laoshiShowImg();
                    laoshiShowVideo();
                    laoshiDataBind();
                }
            });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                    ruleForm = res.data;
                    yonghuShowImg();
                    yonghuShowVideo();
                    yonghuDataBind();
                }
            });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationFeiyongTypesSelect(){
            var feiyongTypesSelect = document.getElementById('feiyongTypesSelect');
            if(feiyongTypesSelect != null && feiyongTypesOptions != null  && feiyongTypesOptions.length > 0 ){
                feiyongTypesSelect.options.length=0;
                for (var i = 0; i < feiyongTypesOptions.length; i++) {
                    feiyongTypesSelect.add(new Option(feiyongTypesOptions[i].indexName,feiyongTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationFeiyongZhuangtaiTypesSelect(){
            var feiyongZhuangtaiTypesSelect = document.getElementById('feiyongZhuangtaiTypesSelect');
            if(feiyongZhuangtaiTypesSelect != null && feiyongZhuangtaiTypesOptions != null  && feiyongZhuangtaiTypesOptions.length > 0 ){
                feiyongZhuangtaiTypesSelect.options.length=0;
                for (var i = 0; i < feiyongZhuangtaiTypesOptions.length; i++) {
                    feiyongZhuangtaiTypesSelect.add(new Option(feiyongZhuangtaiTypesOptions[i].indexName,feiyongZhuangtaiTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationbanjiSelect() {
            var banjiSelect = document.getElementById('banjiSelect');
            if(banjiSelect != null && banjiOptions != null  && banjiOptions.length > 0 ) {
                for (var i = 0; i < banjiOptions.length; i++) {
                        banjiSelect.add(new Option(banjiOptions[i].banjiName, banjiOptions[i].id));
                }

                $("#banjiSelect").change(function(e) {
                        banjiSelectOne(e.target.value);
                });
            }

        }

        function initializationlaoshiSelect() {
            var laoshiSelect = document.getElementById('laoshiSelect');
            if(laoshiSelect != null && laoshiOptions != null  && laoshiOptions.length > 0 ) {
                for (var i = 0; i < laoshiOptions.length; i++) {
                        laoshiSelect.add(new Option(laoshiOptions[i].laoshiName, laoshiOptions[i].id));
                }

                $("#laoshiSelect").change(function(e) {
                        laoshiSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->
        var feiyongTypesSelect = document.getElementById("feiyongTypesSelect");
        if(feiyongTypesSelect != null && feiyongTypesOptions != null  && feiyongTypesOptions.length > 0 ) {
            for (var i = 0; i < feiyongTypesOptions.length; i++) {
                if (feiyongTypesOptions[i].codeIndex == ruleForm.feiyongTypes) {//下拉框value对比,如果一致就赋值汉字
                        feiyongTypesSelect.options[i].selected = true;
                }
            }
        }
        var feiyongZhuangtaiTypesSelect = document.getElementById("feiyongZhuangtaiTypesSelect");
        if(feiyongZhuangtaiTypesSelect != null && feiyongZhuangtaiTypesOptions != null  && feiyongZhuangtaiTypesOptions.length > 0 ) {
            for (var i = 0; i < feiyongZhuangtaiTypesOptions.length; i++) {
                if (feiyongZhuangtaiTypesOptions[i].codeIndex == ruleForm.feiyongZhuangtaiTypes) {//下拉框value对比,如果一致就赋值汉字
                        feiyongZhuangtaiTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var banjiSelect = document.getElementById("banjiSelect");
            if(banjiSelect != null && banjiOptions != null  && banjiOptions.length > 0 ) {
                for (var i = 0; i < banjiOptions.length; i++) {
                    if (banjiOptions[i].id == ruleForm.banjiId) {//下拉框value对比,如果一致就赋值汉字
                        banjiSelect.options[i+1].selected = true;
                        $("#banjiSelect" ).selectpicker('refresh');
                    }
                }
            }
            var laoshiSelect = document.getElementById("laoshiSelect");
            if(laoshiSelect != null && laoshiOptions != null  && laoshiOptions.length > 0 ) {
                for (var i = 0; i < laoshiOptions.length; i++) {
                    if (laoshiOptions[i].id == ruleForm.laoshiId) {//下拉框value对比,如果一致就赋值汉字
                        laoshiSelect.options[i+1].selected = true;
                        $("#laoshiSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {
        <!-- 获取当前表的富文本框内容 -->
    }
    function jiaofei() {
        window.location.href = "../../pay.jsp";
    }
    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addfeiyong');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                yonghuId: "required",
                laoshiId: "required",
                banjiId: "required",
                feiyongName: "required",
                feiyongTypes: "required",
                feiyongZhuangtaiTypes: "required",
                // feiyongOldMoney: "required",
            },
            messages: {
                yonghuId: "学生不能为空",
                laoshiId: "老师不能为空",
                banjiId: "班级不能为空",
                feiyongName: "缴费不能为空",
                feiyongTypes: "缴费类型不能为空",
                feiyongZhuangtaiTypes: "缴费状态不能为空",
                // feiyongOldMoney: "缴费金额不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addfeiyong = window.sessionStorage.getItem("addfeiyong");
        if (addfeiyong != null && addfeiyong != "" && addfeiyong != "null") {
            //注册表单验证
            $(validform());

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            if(window.sessionStorage.getItem('accountTableName') =='feiyong'){
                updateId = window.sessionStorage.getItem('userId');//登录用户查看自己的信息
            }else{
                updateId = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            }
            window.sessionStorage.removeItem('updateId');
            http("feiyong/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {

    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        banjiDataBind();
        laoshiDataBind();
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#laoshiId").val(ruleForm.laoshiId);
        $("#banjiId").val(ruleForm.banjiId);
        $("#feiyongName").val(ruleForm.feiyongName);
        $("#feiyongOldMoney").val(ruleForm.feiyongOldMoney);

    }
    <!--  级联表的数据回显  -->
    function banjiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#banjiId").val(ruleForm.id);

        $("#banjiUuidNumber").val(ruleForm.banjiUuidNumber);
        $("#banjiName").val(ruleForm.banjiName);
        $("#banjiAddress").val(ruleForm.banjiAddress);
        $("#banjiContent").val(ruleForm.banjiContent);
    }

    function laoshiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#laoshiId").val(ruleForm.id);

        $("#laoshiName").val(ruleForm.laoshiName);
        $("#laoshiPhone").val(ruleForm.laoshiPhone);
        $("#laoshiIdNumber").val(ruleForm.laoshiIdNumber);
        $("#sexValue").val(ruleForm.sexValue);
        $("#laoshiEmail").val(ruleForm.laoshiEmail);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuEmail").val(ruleForm.yonghuEmail);
        $("#newMoney").val(ruleForm.newMoney);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        banjiShowImg();
        laoshiShowImg();
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function banjiShowImg() {
    }


    function laoshiShowImg() {
        $("#laoshiPhotoImg").attr("src",baseUrl+ruleForm.laoshiPhoto);
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",baseUrl+ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        banjiShowVideo();
        laoshiShowVideo();
        yonghuShowVideo();
    }


    <!--  级联表的视频  -->

    function banjiShowVideo() {
    }

    function laoshiShowVideo() {
        $("#laoshiPhotoV").attr("src",baseUrl+ruleForm.laoshiPhoto);
    }

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",baseUrl+ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            feiyongTypesSelect();
            feiyongZhuangtaiTypesSelect();

            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            banjiSelect();
            laoshiSelect();
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationFeiyongTypesSelect();
            initializationFeiyongZhuangtaiTypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationbanjiSelect();
            initializationlaoshiSelect();
            initializationyonghuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addfeiyong');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '学生') {
            // $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
            // 缴费金额设置不可选
            $('#feiyongOldMoney').attr('readonly', 'readonly');
            if(sessionTable=="feiyong"){//个人中心修改
            }
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }


        layui.use(['layer' , 'jquery' , 'laydate'], function() {
            var layer = layui.layer;
            var jquery = layui.jquery;
            var laydate = layui.laydate;

        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
			// layui.layer.msg("输入不合法", {time: 2000,icon: 5});
			//    5失败 6成功
        });


        //比较大小
        function compare() {
            var largerVal = null;
            var smallerVal = null;
            if (largerVal != null && smallerVal != null) {
                if (largerVal <= smallerVal) {
                    alert(smallerName + '不能大于等于' + largerName);
                    return false;
                }
            }
            return true;
        }
    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
