<%@page import="util.Utils"%>
<%@page import="model.Catelogy"%>
<%@page import="model.Product"%>
<%@page import="dao.GetDataProduct"%>
<%@page import="dao.GetDataCategory"%>
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
				<form class="sidebar-form">
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
							<li><a href="danhsachmenu.html"><i
									class="fa fa-circle-o"></i> Danh sách menu</a></li>

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
							<li><a href="danhsachUser.html"><i
									class="fa fa-circle-o"></i> Thành viên</a></li>
						</ul></li>
					<li class="treeview"><a href="#"> <i
							class="fa fa-shopping-cart fw"></i> <span>Bán hàng</span> <i
							class="fa fa-angle-left pull-right"></i>
					</a>
						<ul class="treeview-menu">
							<li><a href="phieugiamgia.html"><i
									class="fa fa-circle-o"></i> Phiếu giảm giá </a></li>
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
				<div class="content-wrapper">
					<!-- Content Header (Page header) -->

					<!-- Main content -->
					<section class="content">
					<div class="modal fade" id="add" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Thêm sản phẩm</h4>
								</div>
								<div class="modal-body">
									<form>

										<div class="form-group">
											<label>Tên sản phẩm</label> <input type="text"
												class="form-control" id="ttsp">
										</div>
										<div class="form-group">
											<label>Loại sản phẩm</label> <input type="text"
												class="form-control" id="tlsp">
										</div>
										<div class="form-group">
											<label>Thuộc danh mục</label> <select id="ttdm"
												class="form-control select2 select2-hidden-accessible"
												style="width: 100%;" tabindex="-1" aria-hidden="true">
												<option selected="selected"></option>
												<option value="CAMERA IP">Camera IP</option>
												<option value="CAMERA ANALOG">Camera Analog</option>
												<option value="ĐẦU GHI IP">Đầu ghi IP</option>
												<option value="ĐẦU GHI ANALOG">Đầu ghi Analog</option>
											</select>
										</div>
										<div class="form-group">
											<label>Giá sản phẩm</label> <input type="number"
												class="form-control" id="tgsp">
										</div>


										<label for="texampleInputFile">Hình ảnh</label>
										<div class="input-group" style="width: 100%">
											<input type="file" id="texampleInputFile" class="hidden"
												accept="image/*"> <input type="text" id="thinhanh"
												name="thinhanh" style="width: 85%" class="form-control">
											<button type="button" onClick="chon()"
												class="btn btn-primary add-btn-group">Chọn file</button>
										</div>

										<div class="form-group">
											<label>Chi tiết</label>
											<script>
												CKEDITOR
														.replace(tchitiet)
											</script>
											<textarea class="ckeditor" id="tchitiet" cols="80" rows="10"
												style="background: #999"></textarea>
										</div>
									</form>


								</div>
								<div class="modal-footer">
									<button class="btn " type="button">Thêm sản phẩm</button>
									<button type="button" class="btn " data-dismiss="modal">Thoát</button>
								</div>
							</div>

						</div>
					</div>

					<div class="row">
						<div class="col-xs-12">
							<div class="container-fluid">
								<div class="row">
									<div id="filter-product"
										class="col-md-3 col-md-push-9 col-sm-12 hidden-sm hidden-xs">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h3 class="panel-title">
													<i class="fa fa-filter"></i> Filter
												</h3>
											</div>
											<div class="panel-body">
												<div class="form-group">
													<label class="control-label" for="input-name">Product
														Name</label> <input type="text" name="filter_name" value=""
														placeholder="Product Name" id="input-name"
														class="form-control" autocomplete="off">
													<ul class="dropdown-menu"></ul>
												</div>
												<div class="form-group">
													<label class="control-label" for="input-model">Model</label>
													<input type="text" name="filter_model" value=""
														placeholder="Model" id="input-model" class="form-control"
														autocomplete="off">
													<ul class="dropdown-menu"></ul>
												</div>
												<div class="form-group">
													<label class="control-label" for="input-price">Price</label>
													<input type="text" name="filter_price" value=""
														placeholder="Price" id="input-price" class="form-control">
												</div>
												<div class="form-group">
													<label class="control-label" for="input-quantity">Quantity</label>
													<input type="text" name="filter_quantity" value=""
														placeholder="Quantity" id="input-quantity"
														class="form-control">
												</div>
												<div class="form-group">
													<label class="control-label" for="input-status">Status</label>
													<select name="filter_status" id="input-status"
														class="form-control">
														<option value=""></option>
														<option value="1">Enabled</option>
														<option value="0">Disabled</option>
													</select>
												</div>
												<div class="form-group text-right">
													<button type="button" id="button-filter"
														class="btn btn-default">
														<i class="fa fa-filter"></i> Filter
													</button>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-9 col-md-pull-3 col-sm-12">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h3 class="panel-title">
													<i class="fa fa-list"></i> Product List
												</h3>
											</div>
											<div class="panel-body">
												<form
													action="https://demo.opencart.com/admin/index.php?route=catalog/product/delete&amp;user_token=wYYE21e3p4yhz2xxsbIDVFAx51HYPjZK"
													method="post" enctype="multipart/form-data"
													id="form-product">
													<div class="table-responsive">
														<table class="table table-bordered table-hover">
															<thead>
																<tr>
																	<td style="width: 1px;" class="text-center"><input
																		type="checkbox"
																		onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
																	<td>STT</td>

																	<td class="text-center">ID</td>
																	<td class="text-left"><a>Tên sản phẩm</a></td>
																	<td class="text-left"><a> Loại sản phẩm</a></td>
																	<td class="text-right"><a> Giá</a></td>
																	<td class="text-right"><a>Hình ảnh</a></td>
																	<td class="text-left"><a>Thao tác</a></td>
																</tr>
															</thead>
															<tbody>
																<%
																	ResultSet set = (ResultSet) request.getAttribute("result");
																	int stt = 0;
																	while (set.next()) {
																		Product product = GetDataProduct.getProDuctById(set.getInt("id"));
																		Catelogy catelogy = GetDataCategory.getCategoryById(product.getIdCategory());
																%>
																<tr>
																	<td class="text-center"><input type="checkbox"
																		name="selected[]" value="42"></td>
																	<td class ="text-center"><%=stt%></td>
																	<td class ="text-center"><%=product.getId()%></td>
																	<td class ="text-left"><%=product.getName()%></td>
																	<td class ="text-letf"><%=catelogy.getName()%></td>
																	<td><%=Utils.format(product.getPrice())%></td>
																	<td><img
																		src="<%=request.getContextPath()%>/public/images/san-pham/<%=product.getImage()%> "
																		style="width: 50px; height: 50px"></td>
																	<td class="text-right"><a
																		href=""
																		data-toggle="modal" data-target="#add" title="" class="btn btn-primary"
																		data-original-title="Edit"><i class="fa fa-pencil"></i></a></td>
																</tr>
																<%
																	stt++;
																	}
																%>
															</tbody>
														</table>
													</div>
												</form>
												<div class="row">
													<div class="col-sm-6 text-left"></div>
													<div class="col-sm-6 text-right">Showing 1 to 19 of
														19 (1 Pages)</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row --> </section>
					<!-- /.content -->

				</div>
				<!-- /.content-wrapper -->

			</div>
		</div>
		<script type="text/javascript">
			
		
		</script>
		<!-- ./wrapper -->
</body>

</html>