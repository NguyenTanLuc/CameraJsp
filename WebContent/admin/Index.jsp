<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <title>Camera MLC</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <script src="./js/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <script src="./bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="./dist/js/app.min.js" type="text/javascript"></script>
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="./font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="./dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css">
    <link href="./dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css">



</head>

<body class="skin-blue sidebar-mini">
    <div id="top">
        <header class="main-header">
            <!-- Logo -->
            <a href="index.html" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>MLC</b> Camera</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>MLC</b> Camera</span>
            </a>

            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="label label-success">0</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">Tin nhắn</li>
                        </li>
                        <li class="footer"><a href="#">Xem tất cả</a></li>
                    </ul>
                    </li>
                    <!-- Notifications: style can be found in dropdown.less -->
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">0</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">Thông báo</li>
                            <li class="footer"><a href="#">Xem tất cả</a></li>
                        </ul>
                    </li>
                    <!-- Tasks: style can be found in dropdown.less -->
                    <li class="dropdown tasks-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">0</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">Bạn có 0 công việc</li>
                            <li>
                                <!-- inner menu: contains the actual data -->

                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="./dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">Admin</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="" class="img-circle" alt="User Image">
                                <p>
                                    Admin
                                </p>
                            </li>
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
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                    </ul>
                </div>

            </nav>
        </header>
    </div>
    <!-- Left side column. contains the logo and sidebar -->
    <div id="left">
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>Admin</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Trực tuyến</a>
                    </div>
                </div>
                <!-- search form -->
                <form class="sidebar-form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Tìm kiếm...">
                        <span class="input-group-btn">
                            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </form>
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li class="header">MENU QUẢN LÝ</li>
                    <li class="treeview">
                        <a href="index.html">
                            <i class="fa fa-home"></i> <span>Trang chủ</span>
                        </a>

                    </li>
                    <li class="treeview">
                        <a href="#m2">
                            <i class="fa fa-building"></i> <span>Quản lý Menu</span> <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu collapse" id="m2">
                            <li><a href="danhsachmenu.html"><i class="fa fa-circle-o"></i>
                                    Danh sách menu</a></li>

                        </ul>
                    </li>
                    <li class="treeview" id="m3">
                        <a href="#">
                            <i class="fa fa-table nav_icon"></i> <span>Quản lý sản phẩm</span> <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="<%=request.getContextPath()%>/ShowProductAdmin?pagerow=0"><i class="fa fa-circle-o"></i>
                                    Tất cả sản phẩm</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-files-o"></i>
                            <span>Hóa đơn</span>
                            <span class="fa fa-angle-left pull-right"></span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="danhsachdonhang.html"><i class="fa fa-circle-o"></i>
                                    Quản lý hóa đơn</a></li>
                            <li><a href="donhangspam.html"><i class="fa fa-circle-o"></i>
                                    Đơn hàng spam</a></li>
                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#">
                            <i class=" fa fa-user"></i>
                            <span>Thành viên</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="danhsachUser.html"><i class="fa fa-circle-o"></i>
                                    Thành viên</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-shopping-cart fw"></i>
                            <span>Bán hàng</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="phieugiamgia.html"><i class="fa fa-circle-o"></i>
                                    Phiếu giảm giá </a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#m2">
                            <i class="fa fa-pie-chart"></i> <span>Thông kê</span> <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu collapse" id="m2">
                            <li><a href="tkdoanhthu.html"><i class="fa fa-circle-o"></i> Doanh thu</a></li>
                            <li><a href="tkspbanchay.html"><i class="fa fa-circle-o"></i> SP bán chạy</a></li>
                        </ul>
                    </li>

                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
    </div>
    <!-- Content Wrapper. Contains page content -->
    <div id="content">

        <div class="content-wrapper" style="min-height: 522px;">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    <a href="#"><i class="fa fa-home"></i> Trang chủ</a>
                </h1>
            </section>

            <!-- Main content -->
            <section class="content">
                <!-- Info boxes -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-header with-border">
                                <h3 class="box-title">Danh sách quản lý</h3>

                            </div><!-- /.box-header -->
                            <div class="box-body" style="min-height:450px">
                                <div class="row">

                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <a href="danhsachmenu.html">
                                                <span class="info-box-icon bg-red"><i class="fa fa-bars"></i></span></a>
                                            <div class="info-box-content">
                                                <a href="danhsachmenu.html">
                                                    <h3>Menu</h3>
                                                </a>

                                            </div>
                                        </div>
                                    </div>

                                    <!-- fix for small devices only -->
                                    <div class="clearfix visible-sm-block"></div>

                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <a href="danhsachsanpham.html">
                                                <span class="info-box-icon bg-green"><i class="fa fa-building-o"></i></span></a>
                                            <div class="info-box-content">
                                                <a href="danhsachsanpham.html">
                                                    <h3>Sản phẩm</h3>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <a href="danhsachUser.html"> <span class="info-box-icon bg-yellow"><img src="./icon/multiple-users-silhouette.png" alt=""></span></a>
                                            <div class="info-box-content">
                                                <a href="danhsachUser.html">
                                                    <h3>Thành Viên</h3>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <a href="danhsachdonhang.html">
                                                <span class="info-box-icon bg-orange"><i class="fa fa-files-o"></i></span></a>
                                            <div class="info-box-content">
                                                <a href="danhsachdonhang.html">
                                                    <h3>Hóa đơn</h3>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12">
                                        <div class="info-box">
                                            <a href="tkdoanhthu.html"> <span class="info-box-icon bg-blue"><img src="./icon/earnings.png" alt=""></span></a>
                                            <div class="info-box-content">
                                                <a href="tkdoanhthu.html">
                                                    <h3>Thông kê</h3>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>

                            </div>
                            <div class="box-footer clearfix">

                            </div>
                        </div>
                    </div>
                </div><!-- /.row -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </div>
    <div class="control-sidebar-bg" style="position: fixed; height: auto;"></div>
    </div><!-- ./wrapper -->


</body>

</html>