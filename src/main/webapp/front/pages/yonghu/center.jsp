<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="true" %>
<!-- 个人中心 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>个人中心</title>
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <!-- 引入element样式 -->
    <link rel="stylesheet" href="../../xznstatic/css/element.min.css">
    <!-- 样式 -->
    <link rel="stylesheet" href="../../xznstatic/css/style.css"/>
    <!-- 主题（主要颜色设置） -->
    <link rel="stylesheet" href="../../css/theme.css" />
    <!-- 通用的css -->
    <link rel="stylesheet" href="../../xznstatic/css/common.css"/>
    <link rel="stylesheet" href="../../xznstatic/css/bootstrap.min.css" />
</head>
<style>
    html::after {
        position: fixed;
        top: 0;
        right: 0;
        left: 0;
        bottom: 0;
        content: '';
        display: block;
        background-attachment: fixed;
        background-size: cover;
        background-position: center;
        z-index: -1;
    }

    /*小菜单*/
    /*添加地址按钮样式*/
    .btn-container {
        margin-top: 20px;
        text-align: right;
        margin-bottom: 60px;
        border: 2px dotted #EEEEEE;
        padding: 20px;
    }

    /*腰线*/
    .index-title {
        text-align: center;
        box-sizing: border-box;
        width: 980px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
    .index-title span {
        padding: 0 10px;
        line-height: 1.4;
    }

    /*小菜单样式*/

     .center-container .left-container {
        border: 2px dotted #EEEEEE;
        width: 200px;
        padding-top: 20px;
    }

    .center-container .right-container {
        flex: 1;
        border: 2px dotted #EEEEEE;
        background: #FFFFFF;
        text-align: left;
        padding: 20px;
        padding-top: 40px;
    }

    .center-container .layui-nav-tree {
        margin-top: 20px;
        width: 80%;
    }

    .center-container .layui-nav {
        position: inherit;
    }

    .center-container .layui-nav-tree .layui-nav-item {
        line-height: 44px;
        font-size: 16px;
        color: rgba(17, 17, 17, 1);
        border-width: 0px 0px 1px 0px;
        border-style: solid;
        border-radius: 0;
        background-color: #fff;
        text-align: center;
        border-color: var(--publicMainColor);
        box-shadow: 0 0 0px var(--publicMainColor);
    }

    .center-container .layui-nav-tree .layui-nav-bar {
        height: 44px !important;
        opacity: 0 !important;
    }

    .center-container .layui-nav-tree .layui-nav-item.layui-this {
        font-size: 16px;
        color: rgba(17, 17, 17, 1);
        border-width: 0;
        border-style: solid;
        border-radius: 0;
        background-color: var(--publicSubColor);
    }

    .center-container .layui-nav-tree .layui-nav-item:hover {
        font-size: 14px;
        color: #fff;
        border-width: 0;
        border-style: solid;
        border-radius: 0;
        background-color: var(--publicMainColor);
    }

    .center-container .layui-nav-tree .layui-nav-item a {
        line-height: inherit;
        height: auto;
        background-color: inherit;
        color: inherit;
        text-decoration: none;
        border-color: var(--publicMainColor);
        box-shadow: 0 0 0px var(--publicMainColor);
    }
    /*信息样式*/
    .center-container {
        width: 1200px;
        margin: 0 auto;
        margin-top: 20px;
        text-align: left;
        display: flex;
        margin-bottom: 20px;
    }
    .right-container {
        position: relative;
    }
    .right-container .layui-form-item {
        display: flex;
        align-items: center;
    }
    .right-container .layui-input-block {
        margin: 0;
        flex: 1;
    }
    .right-container .input .layui-input {
        padding: 0 12px;
        height: 40px;
        font-size: 15px;
        border-radius: 4px;
        border-width: 1px;
        border-style: solid;
        background-color: #fff;
        text-align: left;
    }
    .right-container .select .layui-input {
        padding: 0 12px;
        height: 40px;
        font-size: 15px;
        border-radius: 4px;
        border-width: 1px;
        border-style: solid;
        background-color: #fff;
        text-align: left;
    }
    .right-container .date .layui-input {
        padding: 0 12px;
        height: 40px;
        font-size: 15px;
        color: rgba(160, 67, 26, 1);
        border-radius: 4px;
        border-width: 1px;
        border-style: solid;
        background-color: #fff;
        box-shadow: 0 0 0px rgba(255,0,0,.8);
        text-align: left;
    }

</style>
<body class='bodyClass'>
    <div id="app">
        <div class="index-title sub_backgroundColor" :style='{"padding":"10px","boxShadow":"0 0 2px rgba(160, 67, 26, 1)","margin":"10px auto","borderColor":"rgba(0,0,0,.3)","color":"rgba(255, 255, 255, 1)","borderRadius":"4px","borderWidth":"0","fontSize":"20px","borderStyle":"solid","height":"auto"}'>
            <span>USER / CENTER</span><span>个人中心</span>
        </div>
        <!-- 标题 -->
        <div class="center-container">
            <!-- 个人中心菜单 config.js-->
            <div class="left-container" :style='{"backgroundColor":"#fff","padding":"0","boxShadow":"0px ","margin":"0","borderColor":"rgba(135, 206, 250, 1)","borderRadius":"0","borderWidth":"0px ","width":"20%","borderStyle":"solid"}'>
                <ul class="layui-nav layui-nav-tree">
                    <li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
                        <a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
                    </li>
                </ul>
            </div>            <!-- 个人中心菜单 -->
            <!-- 个人中心 -->
            <div class="right-container sub_borderColor" :style='{"backgroundColor":"#fff","padding":"20px","boxShadow":"0px rgba(255,0,0,.8)","margin":"0","backgroundColor":"#fff","borderRadius":"0","borderWidth":"1px","borderStyle":"solid","width":"80%"}'>
                <form class="layui-form"  v-if="!changePassword">
                    <!-- 主键 -->
                    <input type="hidden" v-model="detail.id" name="id" id="id" />
                    <div class="layui-form-item main_borderColor"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                        <label  :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">
                            账户
                        </label>
                        <div class="layui-input-block input">
                            <input type="text" v-model="detail.username" name="username" id="username" lay-verify="required" placeholder="账户" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item main_borderColor"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                        <label  :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">
                            学生姓名
                        </label>
                        <div class="layui-input-block input">
                            <input type="text" v-model="detail.yonghuName" name="yonghuName" id="yonghuName" lay-verify="required" placeholder="学生姓名" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item main_borderColor"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                        <label  :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">
                            学生手机号
                        </label>
                        <div class="layui-input-block input">
                            <input type="text" v-model="detail.yonghuPhone" name="yonghuPhone" id="yonghuPhone" lay-verify="required|phone" placeholder="学生手机号" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item main_borderColor"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                        <label  :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">
                            学生身份证号
                        </label>
                        <div class="layui-input-block input">
                            <input type="text" v-model="detail.yonghuIdNumber" name="yonghuIdNumber" id="yonghuIdNumber" lay-verify="required|identity" placeholder="学生身份证号" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item main_borderColor"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                        <label  :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' style="opacity: 0;" class="layui-form-label">
                            学生头像
                        </label>
                        <div class="layui-input-block">
                            <img id="yonghuPhotoImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" :style='{"boxShadow":"0 0 3px rgba(160, 67, 26, 1)","borderColor":"rgba(135, 206, 250, 1)","backgroundColor":"#fff","borderRadius":"10px","borderWidth":"1px","width":"80px","borderStyle":"solid","height":"80px"}' :src="baseUrl+detail.yonghuPhoto">
                            <input type="hidden" v-model="detail.yonghuPhoto" id="yonghuPhoto" name="yonghuPhoto" />
                        </div>
                    </div>
                    <div class="layui-form-item main_borderColor"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                        <label  :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' style="opacity: 0;" class="layui-form-label">
                            学生头像
                        </label>
                        <div class="layui-input-block">
                            <button class="main_backgroundColor" :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(255,0,0,.5)","margin":"0 10px 0 0","borderColor":"#ccc","color":"#fff","borderRadius":"8px","borderWidth":"0","width":"auto","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="button" class="layui-btn btn-theme"
                                    id="yonghuPhotoUpload">
                                <i v-if="true" :style='{"color":"#fff","show":true,"fontSize":"14px"}' class="layui-icon">&#xe67c;</i>上传学生头像
                            </button>
                        </div>
                    </div>
                    <div class="layui-form-item main_borderColor"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                        <label  :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">
                            性别
                        </label>
                        <div class="layui-input-block select">
                            <el-select v-model="detail.sexTypes" filterable placeholder="请选择性别" style="border-color: var(--publicMainColor, #808080);" name="sexTypes" id="sexTypes">
                                <el-option
                                        v-for="(item,index) in sexTypesList"
                                        v-bind:key="item.codeIndex"
                                        :label="item.indexName"
                                        :value="item.codeIndex">
                                </el-option>
                            </el-select>
                        </div>
                    </div>
                    <div class="layui-form-item main_borderColor"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                        <label  :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">
                            学生邮箱
                        </label>
                        <div class="layui-input-block input">
                            <input type="text" v-model="detail.yonghuEmail" name="yonghuEmail" id="yonghuEmail" lay-verify="required" placeholder="学生邮箱" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item main_borderColor"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                        <label  :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}' class="layui-form-label">余额</label>
                        <div class="layui-input-inline input">
                            <input type="number" v-model="detail.newMoney" name="newMoney" id="newMoney" placeholder="余额" autocomplete="off" class="layui-input" disabled="disabled">
                        </div>
                        <div class="layui-form-mid layui-word-aux">
                            <i class="layui-icon" style="font-size: 20px;color: red;">&#xe65e;</i>
                            <a id="btn-recharge" href="javascript:void(0)">点我充值</a>
                            <!--<div style="text-align: center;width: 100px;height: 41px;line-height: 41px;background-color: rgb(59 161 82);border-radius: 6px;margin-left: 10px;"
                                 @click="" >充值会员</div>-->
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-input-block" style="display: flex;flex-wrap:wrap;">
                            <button class="main_backgroundColor" :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(255,0,0,.5)","margin":"10px auto 0","borderColor":"#ccc","color":"#fff","borderRadius":"8px","borderWidth":"0","width":"30%","fontSize":"15px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">更新信息</button>
                            <button class="layui-btn" :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(255,0,0,.5)","margin":"10px auto","borderColor":"#ccc","backgroundColor":"var(--publicSubColor)","color":"rgba(255, 255, 255, 1)","borderRadius":"8px","borderWidth":"0","width":"30%","fontSize":"14px","borderStyle":"solid","height":"44px"}' @click="xiugaimima()">修改密码</button>
                            <button :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(255,0,0,.5)","margin":"10px auto","borderColor":"#ccc","backgroundColor":"rgba(255, 0, 0, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"8px","borderWidth":"0","width":"30%","fontSize":"14px","borderStyle":"solid","height":"44px"}' @click="logout" class="layui-btn btn-submit">退出登录</button>
                        </div>
                    </div>
                </form>
                <div v-if="changePassword"
                     style="width:780px;height: 100%;background-color: #fff;position: relative;top: 0px;left: 0px;">
                    <div style="width: 778px;margin: 10px auto;">
                        <div class="layui-form-item main_borderColor"
                             :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                            <label
                                    :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}'
                                    class="layui-form-label">
                                旧密码
                            </label>
                            <div class="layui-input-block input">
                                <input type="text" v-model="oldPassword" lay-verify="required|identity" placeholder="旧密码"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item main_borderColor"
                             :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                            <label
                                    :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}'
                                    class="layui-form-label">
                                新密码
                            </label>
                            <div class="layui-input-block input">
                                <input type="password" v-model="newPassword" lay-verify="required|identity" placeholder="新密码"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item main_borderColor"
                             :style='{"padding":"10px","boxShadow":"0 0 0px rgba(255,0,0,.8)","margin":"0 0 10px 0","backgroundColor":"#fff","borderRadius":"1px","borderWidth":"0 0 1px 0","borderStyle":"solid"}'>
                            <label
                                    :style='{"width":"110px","padding":"0 12px 0 0","fontSize":"15px","color":"#333","textAlign":"left"}'
                                    class="layui-form-label">
                                确认密码
                            </label>
                            <div class="layui-input-block input">
                                <input type="password" v-model="confirmPassword" lay-verify="required|identity" placeholder="确认密码"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div style="display: flex;">
                            <button class="main_backgroundColor"
                                    :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(255,0,0,.5)","margin":"10px auto 0","borderColor":"#ccc","color":"#fff","borderRadius":"8px","borderWidth":"0","width":"30%","fontSize":"15px","borderStyle":"solid","height":"44px"}'
                                    class="layui-btn btn-theme" @click="back()">返回</button>
                            <button
                                    :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(255,0,0,.5)","margin":"10px auto","borderColor":"#ccc","backgroundColor":"rgba(255, 0, 0, 1)","color":"rgba(255, 255, 255, 1)","borderRadius":"8px","borderWidth":"0","width":"30%","fontSize":"14px","borderStyle":"solid","height":"44px"}'
                                    class="layui-btn" @click="queren()">确定</button>
                        </div>
                    </div>

                </div>


            </div>
            <!-- 个人中心 -->
        </div>

    </div>

    <!-- layui -->
    <script src="../../layui/layui.js"></script>
    <!-- vue -->
    <script src="../../js/vue.js"></script>
    <!-- 引入element组件库 -->
    <script src="../../xznstatic/js/element.min.js"></script>
    <!-- 组件配置信息 -->
    <script src="../../js/config.js"></script>
    <!-- 扩展插件配置信息 -->
    <script src="../../modules/config.js"></script>
    <!-- 工具方法 -->
    <script src="../../js/utils.js"></script>
    <!-- 校验格式工具类 -->
    <script src="../../js/validate.js"></script>

    <script>
        var vue = new Vue({
            el: '#app',
            data: {
                //项目路径
                baseUrl:"",

                //修改密码
                changePassword:false,
                oldPassword:'',
                newPassword:'',
                confirmPassword:'',
                detail: {
                    username: '',
                    password: '',
                    yonghuName: '',
                    yonghuPhone: '',
                    yonghuIdNumber: '',
                    yonghuPhoto: '',
                    sexTypes: '',//数字
                    sexValue: '',//数字对应的值
                    yonghuEmail: '',
                    newMoney: '',
                    createTime: '',
                },
                sexTypesList: [],
                centerMenu: centerMenu
            },
            updated: function() {
                // layui.form.render(null, 'myForm');
            },
            methods: {
                xiugaimima() {
                    this.changePassword = true
                },
                back() {
                    this.changePassword = false
                },
                queren() {
                    // 提交代码
                    let _this=this;
                    if(_this.confirmPassword != _this.newPassword){
                        _this.$message.error("两次密码不一致");
                        return;
                    }
                    // if(_this.detail.password != _this.oldPassword){
                    //     _this.$message.error("原密码输入错误");
                    //     return;
                    // }
                    // if(_this.detail.password == _this.newPassword){
                    //     _this.$message.error("新密码不能和原密码一致");
                    //     return;
                    // }
                    _this.detail.password=_this.newPassword;//密码重新赋值
                    layui.http.request(`yonghu/updatePassword`, 'get', {
                        oldPassword:_this.oldPassword,
                        newPassword:_this.newPassword
                    }, function(res) {
                        _this.$message.success("修改密码成功,下次登录用新密码");
                        _this.oldPassword = null
                        _this.newPassword = null
                        _this.confirmPassword = null
                        _this.changePassword = false
                    });
                },
                jump(url) {
                    jump(url)
                },
                logout(){
                    localStorage.removeItem('Token');
                    localStorage.removeItem('role');
                    localStorage.removeItem('sessionTable');
                    localStorage.removeItem('adminName');
                    localStorage.removeItem('userid');
                    localStorage.removeItem('userTable');
                    localStorage.removeItem('iframeUrl');
                    window.parent.location.href = '../login/login.jsp';
                }
            }
        })

        layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'laydate', 'form', 'upload'], function() {
            var layer = layui.layer;
            var element = layui.element;
            var carousel = layui.carousel;
            var http = layui.http;
            var jquery = layui.jquery;
            var form = layui.form;
            var upload = layui.upload;
            vue.baseUrl = http.baseurl


            // 充值
            jquery('#btn-recharge').click(function(e) {
                layer.open({
                    type: 2,
                    title: '用户充值',
                    area: ['900px', '600px'],
                    content: '../recharge/recharge.jsp'
                });
            });

            // 查询字典表相关
            // 性别的查询和初始化
            sexTypesSelect();
            // 日期效验规则及格式
            dateTimePick();
            // 表单效验规则
            form.verify({
                // 正整数效验规则
                integer: [
                    /^[1-9][0-9]*$/
                    ,'必须是正整数'
                ]
                // 小数效验规则
                ,double: [
                    /^[0-9]{0,6}(\.[0-9]{1,2})?$/
                    ,'最大整数位为6为,小数最大两位'
                ]
            });


            // 上传 文件/图片
            // 学生头像的文件上传
            var yonghuPhotoUpload = upload.render({
                //绑定元素
                elem: '#yonghuPhotoUpload',
                //上传接口
                url: http.baseurl + 'file/upload',
                // 请求头
                headers: {
                    Token: localStorage.getItem('Token')
                },
                // 允许上传时校验的文件类型
                accept: 'images',
                before: function() {
                    //loading层
                    var index = layer.load(1, {
                        shade: [0.1, '#fff'] //0.1透明度的白色背景
                    });
                },
                // 上传成功
                done: function(res) {
                    console.log(res);
                    layer.closeAll();
                    if (res.code == 0) {
                        layer.msg("上传成功", {
                            time: 2000,
                            icon: 6
                        })
                        var url ='upload/' + res.file;
                        vue.detail.yonghuPhoto = url;
                    } else {
                        layer.msg(res.msg, {
                            time: 2000,
                            icon: 5
                        })
                    }
                },
                //请求异常回调
                error: function() {
                    layer.closeAll();
                    layer.msg("请求接口异常", {
                        time: 2000,
                        icon: 5
                    })
                }
            });
            // 查询用户信息
            let table = localStorage.getItem("userTable");

            if(!table){
                layer.msg('请先登录', {
                    time: 2000,
                    icon: 5
                }, function() {
                    window.parent.location.href = '../login/login.jsp';
                });
            }

            http.request(`yonghu/session`, 'get', {}, function(data) {
                // 表单赋值
                // form.val("myForm", data.data);
                vue.detail = data.data
                // 图片赋值
                //jquery("#yonghuPhotoImg").attr("src", data.data.yonghuPhoto);
            });

            // 提交表单
            form.on('submit(*)', function(data) {
                data = vue.detail;
                data['createTime']=jquery("#createTime").val();
                http.requestJson(table + '/update', 'post', data, function(res) {
                    layer.msg('修改成功', {
                        time: 2000,
                        icon: 6
                    }, function() {
                        window.location.reload();
                    });
                });
                return false
            });

        });

        // 日期框初始化
        function dateTimePick(){
        }




        //性别的查询
        function sexTypesSelect() {
            //填充下拉框选项
            layui.http.request("dictionary/page?page=1&limit=100&sort=&order=&dicCode=sex_types", "GET", {}, (res) => {
                if(res.code == 0){
                    vue.sexTypesList = res.data.list;
                }
            });
        }

    </script>
</body>
</html>
