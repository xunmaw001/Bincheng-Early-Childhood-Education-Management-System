<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
<%@ include file="static/head.jsp"%>
</head>
<style>

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
			<%@ include file="static/topNav.jsp"%>
			<!-- Menu -->
			<div class="container menu-nav">
				<nav class="navbar navbar-expand-lg lochana-bg text-white">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="ti-menu text-white"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul id="navUl" class="navbar-nav mr-auto">

						</ul>
					</div>
				</nav>
			</div>
			<!-- /Menu -->
			<!-- Breadcrumb -->
			<!-- Page Title -->
			<div class="container mt-0">
				<div class="row breadcrumb-bar">
					<div class="col-md-6">
						<h3 class="block-title">支付</h3>
					</div>
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath}/index.jsp"> <span
									class="ti-home"></span>
							</a></li>
							<li class="breadcrumb-item">支付</li>
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
							<h3 class="widget-title">请选择支付方式</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
																	
									<div class="form-group col-md-12">
										<label>
											<input type="radio" name="optionsRadios" checked>
											<img src="${pageContext.request.contextPath}/resources/images/bank/微信支付.png" width="200" height="100">
										</label>
										<label>
											<input type="radio" name="optionsRadios">
											<img src="${pageContext.request.contextPath}/resources/images/bank/支付宝支付.png" width="200" height="100">
										</label>
										<label>
											<input type="radio" name="optionsRadios">
											<img src="${pageContext.request.contextPath}/resources/images/bank/交通银行.png" width="200" height="100">
										</label>
										<label>
											<input type="radio" name="optionsRadios">
											<img src="${pageContext.request.contextPath}/resources/images/bank/招商银行.png" width="200" height="100">
										</label>
									</div>
									<div class="form-group col-md-12">
										<label>
											<input type="radio" name="optionsRadios">
											<img src="${pageContext.request.contextPath}/resources/images/bank/中国农业银行.png" width="200" height="100">
										</label>
										<label>
											<input type="radio" name="optionsRadios">
											<img src="${pageContext.request.contextPath}/resources/images/bank/中国建设银行.png" width="200" height="100">
										</label>
										<label>
											<input type="radio" name="optionsRadios">
											<img src="${pageContext.request.contextPath}/resources/images/bank/中国银行.png" width="200" height="100">
										</label>
										<label>
											<input type="radio" name="optionsRadios">
											<img src="${pageContext.request.contextPath}/resources/images/bank/中国邮政储蓄银行.png" width="200" height="100">
										</label>
									</div>
									
									<div class="form-group col-md-12">
										<label>充值金额</label>
										<input style="width: 450px" id="newMoney" name="newMoney" class="form-control"
											 type="number"  placeholder="充值金额" value="100" min="10">
									</div>

									<div class="form-group col-md-6 mb-3">
										<button id="submitBtn" type="button"
											class="btn btn-primary btn-lg">支付</button>
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
	<a id="back-to-top" href="#" class="back-to-top"> <span
		class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="static/foot.jsp"%>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<script>
		
	<%@ include file="utils/menu.jsp"%>
		
	<%@ include file="static/setMenu.js"%>
		
	<%@ include file="utils/baseUrl.jsp"%>
		var tableName = "";
		var pageType = "pay";
		var sessionTable = window.sessionStorage.getItem("accountTableName");//登录账户所在表名
		var role         = window.sessionStorage.getItem("role");//权限
		var userId       = window.sessionStorage.getItem("userId");//当前登录人的id

		function pay() {
			$.ajax({
				type: "GET",
				url: baseUrl + sessionTable+"/session",
				beforeSend: function (xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
				success: function (res) {
					var data=res.data;
					data.newMoney=Number($("#newMoney").val())+Number(data.newMoney);
					$.ajax({
						type: "POST",
						url: baseUrl+sessionTable+"/update",
						contentType: "application/json",
						data: JSON.stringify(data),
						beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
						success: function(res){
							if(res.code == 0){
								alert('支付成功');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
								alert(res.msg)
							}
						},
					});
				},
			});





		}
		
		$(document).ready(function() {
			//设置导航栏菜单
			setMenu();
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				//console.log("点击了...提交按钮");
				pay();
			});
			<%@ include file="static/myInfo.js"%>
		});
		// 用户登出
	<%@ include file="static/logout.jsp"%>
		
	</script>
</body>

</html>
