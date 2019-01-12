<%@page import="model.User"%>
<%@page import="dao.GetDataUser"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title>Camera MLC</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<script src="<%=request.getContextPath()%>/admin/js/jQuery-2.1.4.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/admin/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/admin/dist/js/app.min.js"
	type="text/javascript"></script>
<link
	href="<%=request.getContextPath()%>/admin/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/admin/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/admin/dist/css/AdminLTE.min.css"
	rel="stylesheet" type="text/css">
<link
	href="<%=request.getContextPath()%>/admin/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/admin/ckeditor/ckeditor.js"></script>

</head>

<body>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
		<div id="top">
			<header class="main-header"> <!-- Logo --> <a
				href="index.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>MLC</b> Camera</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>MLC</b> Camera</span>
			</a> <!-- Header Navbar: style can be found in header.less --> <nav
				class="navbar navbar-static-top" role="navigation"> <!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span>
			</a> <!-- Navbar Right Menu -->
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					<li class="dropdown messages-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="fa fa-envelope-o"></i> <span class="label label-success">0</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">Tin nhắn</li></li>
					<li class="footer"><a href="#">Xem tất cả</a></li>
				</ul>
				</li>
				<!-- Notifications: style can be found in dropdown.less -->
				<li class="dropdown notifications-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-bell-o"></i> <span class="label label-warning">0</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">Thông báo</li>
						<li class="footer"><a href="#">Xem tất cả</a></li>
					</ul></li>
				<!-- Tasks: style can be found in dropdown.less -->
				<li class="dropdown tasks-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-flag-o"></i> <span class="label label-danger">0</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">Bạn có 0 công việc</li>
						<li>
							<!-- inner menu: contains the actual data -->

						</li>
						<li class="footer"><a href="#">View all tasks</a></li>
					</ul></li>
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="./dist/img/user2-160x160.jpg" class="user-image"
						alt="User Image"> <span class="hidden-xs">Admin</span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img src="" class="img-circle"
							alt="User Image">
							<p>Admin</p></li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="#" class="btn btn-default btn-flat">Thông tin</a>
							</div>
							<div class="pull-right">
								<a href="logout.html" class="btn btn-default btn-flat">Đăng
									xuất</a>
							</div>
						</li>
					</ul></li>
				<!-- Control Sidebar Toggle Button -->
				<li><a href="#" data-toggle="control-sidebar"><i
						class="fa fa-gears"></i></a></li>
				</ul>
			</div>

			</nav> </header>
		</div>
		<!-- Left side column. contains the logo and sidebar -->
		<div id="left">
			<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar"> <!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="dist/img/user2-160x160.jpg" class="img-circle"
						alt="User Image">
				</div>
				<div class="pull-left info">
					<p>Admin</p>
					<a href="#"><i class="fa fa-circle text-success"></i> Trực
						tuyến</a>
				</div>
			</div>
			<!-- search form -->
			<form action="#" method="get" class="sidebar-form">
				<div class="input-group">
					<input type="text" name="q" class="form-control"
						placeholder="Tìm kiếm..."> <span class="input-group-btn">
						<button type="submit" name="search" id="search-btn"
							class="btn btn-flat">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</form>
			<!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu">
				<li class="header">MENU QUẢN LÝ</li>
				<li class="treeview"><a href="index.html"> <i
						class="fa fa-home"></i> <span>Trang chủ</span>
				</a></li>
				<li class="treeview"><a href="#m2"> <i
						class="fa fa-building"></i> <span>Quản lý Menu</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu collapse" id="m2">
						<li><a href="danhsachmenu.html"><i class="fa fa-circle-o"></i>
								Danh sách menu</a></li>

					</ul></li>
				<li class="treeview" id="m3"><a href="#"> <i
						class="fa fa-table nav_icon"></i> <span>Quản lý sản phẩm</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="danhsachsanpham.html"><i
								class="fa fa-circle-o"></i> Tất cả sản phẩm</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-files-o"></i>
						<span>Hóa đơn</span> <span class="fa fa-angle-left pull-right"></span>
				</a>
					<ul class="treeview-menu">
						<li><a href="danhsachdonhang.html"><i
								class="fa fa-circle-o"></i> Quản lý hóa đơn</a></li>
						<li><a href="donhangspam.html"><i class="fa fa-circle-o"></i>
								Đơn hàng spam</a></li>
					</ul></li>

				<li class="treeview"><a href="#"> <i class=" fa fa-user"></i>
						<span>Thành viên</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="danhsachUser.html"><i class="fa fa-circle-o"></i>
								Thành viên</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i
						class="fa fa-shopping-cart fw"></i> <span>Bán hàng</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="phieugiamgia.html"><i class="fa fa-circle-o"></i>
								Phiếu giảm giá </a></li>
					</ul></li>
				<li class="treeview"><a href="#m2"> <i
						class="fa fa-pie-chart"></i> <span>Thông kê</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu collapse" id="m2">
						<li><a href="tkdoanhthu.html"><i class="fa fa-circle-o"></i>
								Doanh thu</a></li>
						<li><a href="tkspbanchay.html"><i class="fa fa-circle-o"></i>
								SP bán chạy</a></li>
					</ul></li>

			</ul>
			</section> <!-- /.sidebar --> </aside>
		</div>
		<!-- Content Wrapper. Contains page content -->
		<div id="content">
			<div class="content-wrapper" style="min-height: 531px;">
				<!-- Content Header (Page header) -->
				<section class="content-header">
				<h1>Quản lí thành viên</h1>
				</section>

				<!-- Main content -->
				<section class="content">
				<div class="row">

					<div class="modal-body">

						<div class="row mt-20">
							<div class="col-md-6">
								<form>
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Nhập từ khóa..." name="tukhoa"> <span
											class="input-group-btn">
											<button class="btn btn-info" type="submit">
												<i class="fa fa-search"></i>Tìm kiếm

											</button>
											<button class="btn btn-info" type="button"
												data-toggle="modal" data-target="#myModal">
												<i class="fa fa-plus"></i>Thêm
											</button>
										</span>
									</div>
								</form>

							</div>
							<hr>
							<div class="row">
								<div class="col-md-11 col-sm-12" style="margin-left: 10px;">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h3 class="panel-title">
												<i class="fa fa-list"></i> Customer List
											</h3>
										</div>
										<div class="panel-body">
											<form
												action="https://demo.opencart.com/admin/index.php?route=customer/customer/delete&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=2"
												method="post" enctype="multipart/form-data"
												id="form-customer">
												<table class="table table-bordered table-hover">
													<thead>
														<tr>
															<td style="width: 1px;" class="text-center"><input
																type="checkbox"
																onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
															<td class="text-left"><a>STT</a></td>
															<td class="text-left"><a>Tên người dùng</a></td>
															<td class="text-left"><a>E-Mail</a></td>
															<td class="text-left"><a>Số điện thoại</a></td>
															<td class="text-left"><a>Nhóm người dùng</a></td>
															<td class="text-left"><a>Trạng thái</a></td>
															<td class="text-right">Thao tác</td>
														</tr>
													</thead>
													<tbody>
													<% int ipage = Integer.parseInt(request.getParameter("page"));
													ResultSet resultSet = GetDataUser.getDataUserManager(ipage);
													int stt=0;
													while (resultSet.next()){
													User user = GetDataUser.getUserFomResultSet(resultSet);
													String nameGroup =resultSet.getString("namegroup");
													String namestt =resultSet.getString("namestatus");%>
														<tr>
															<td class="text-center"><input type="checkbox"
																name="selected[]" value="4631"></td>
															<td class="text-left"><span><%=stt %></span></td>
															<td class="text-left"><span><%=user.getName() %></span></td>
															<td class="text-left"><span><%=user.getEmail() %></span></td>
															<td class="text-left"><span><%=user.getPhone() %></span></td>
															<td class="text-left"><span><%=nameGroup %></span></td>
															<td class="text-left"><span><%=namestt %></span></td>
															<td class="text-right"><div class="btn-group"
																	style="min-width: 65px;">
																	<a
																		href="https://demo.opencart.com/admin/index.php?route=customer/customer/edit&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;customer_id=4631&amp;page=2"
																		data-toggle="tooltip" title="" class="btn btn-primary"
																		data-original-title="Edit"><i class="fa fa-pencil"></i></a>
																	<button type="button" data-toggle="dropdown"
																		class="btn btn-primary dropdown-toggle">
																		<span class="caret"></span>
																	</button>
																	<ul class="dropdown-menu dropdown-menu-right">
																		<li class="dropdown-header">Options</li>
																		<li class="disabled"><a><i
																				class="fa fa-unlock"></i> Unlock Account</a></li>
																		<li role="separator" class="divider"></li>
																		<li class="dropdown-header">Login into Store</li>
																		<li><a
																			href="https://demo.opencart.com/admin/index.php?route=customer/customer/login&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;customer_id=4631&amp;store_id=0"
																			target="_blank"><i class="fa fa-lock"></i> Your
																				Store</a></li>
																	</ul>
																</div></td>
														</tr>
														<%stt++;}resultSet.close(); %>
													</tbody>
												</table>
											</form>
											<div class="row">
												<div class="col-sm-6 text-left">
													<ul class="pagination">
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8">|&lt;</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8">&lt;</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8">1</a></li>
														<li class="active"><span>2</span></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=3">3</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=4">4</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=5">5</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=6">6</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=7">7</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=8">8</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=9">9</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=3">&gt;</a></li>
														<li><a
															href="https://demo.opencart.com/admin/index.php?route=customer/customer&amp;user_token=C8sjqwgXLiqApaUIWW0XZmDnHQrGSuX8&amp;page=1356">&gt;|</a></li>
													</ul>
												</div>
												<div class="col-sm-6 text-right">Showing 21 to 40 of
													27103 (1356 Pages)</div>
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>


					</div>
				</section>
			</div>

		</div>


	</div>
	<!-- ./wrapper -->
	<!-- jQuery 2.1.4 -->
	<!-- Bootstrap 3.3.2 JS -->

	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">THÊM</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal form-label-left">
						<input type="hidden">
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="last-name">Họ tên<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" name="name" placeholder="Nhập tên đăng nhập"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">Địa
								chỉ Email<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="mail" name="email" placeholder="Nhập email"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="last-name">Mật khẩu<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="password" name="password"
									placeholder="Nhập mật khẩu" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="last-name">Nhập lại mật khẩu<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="password" name="password2"
									placeholder="Nhập mật khẩu" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="last-name">Số điện thoại<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" placeholder="Nhập số điện thoại"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="last-name">Tình trạng<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="radio" value="0">Chưa kích hoạt<br> <input
									type="radio" value="1" checked="">Đã kích hoạt<br>
							</div>
						</div>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
								<center>
									<button type="submit" class="btn btn-info" id="btn-add" href="">
										<span class="glyphicon glyphicon-plus"></span>Thêm
									</button>
									<a type="reset" class="btn btn-success" id="btn-add"><i
										class="fa fa-refresh" aria-hidden="true">Nhập lại</i></a>
								</center>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				</div>
			</div>
		</div>
	</div>


</body>

</html>