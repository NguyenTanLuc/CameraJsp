<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="vi" charset="utf-8">
   <head>
      <!-- CSS and Jquery start here -->
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Camera quan sát MLC</title>
      <link rel="stylesheet" type="text/css" href="public/stylesheets/bootstrap.min.css" />
      <link rel="stylesheet" type="text/css" href="public/stylesheets/normalize.css" />
      <link rel="stylesheet" type="text/css" href="public/stylesheets/app.css" />
      <link rel="stylesheet" type="text/css" href="public/stylesheets/page.css" />
      <link rel="stylesheet" type="text/css" href="public/font-awesome-4.7.0/css/font-awesome.min.css" />
      <script src="public/js/jquery-2.1.3.min.js"></script>
      <script src="./public/js/bootstrap.min.js"></script>
   </head>
   <body lang="vi">
    <div>
        <div id="top">
            <div id="topRed" class="hidden-sm hidden-xs">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="topDangNhap" style="float:right;">
                                        <div class="textWhite">
                                            <a class="fa fa-user aDangNhap" href="#" data-toggle="modal" data-target="#formlogin">
                                                Đăng nhập</a>
                                        </div>
                                    </div>
                                    <div class="topDangNhap" style="float:right;">
                                        <div class="textWhite">
                                            <a class="gioHang" href="cart.html">Giỏ hàng (<b>0</b> sản phẩm)</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row topLogo">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12 col-md-3">
                                <div id="logo">
                                    <a href="index.html">
                                        <img title="LẮP ĐẶT CAMERA QUAN SÁT GIÁ RẺ" src="public/images/ui_images/logo.jpg">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <img style="width:100%;margin-top:25px;" src="public/images/ui_images/promise.png">
                            </div>
                            <div class="col-xs-12 col-md-3">
                                <div class="hotline">
                                    <div class="name">Tư vấn lắp đặt camera</div>
                                    <div class="clear"></div>
                                    <div class="phone">
                                        <a href="tel:0328826810">0328826810</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Menu -->
            <div class="clear"></div>
            <div class="modal fade" id="formlogin" role="dialog" style="display: none;">
                <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">
                                <span class="fa fa-remove"></span>
                            </button>
                            <ul class="nav nav-tabs ">
                                <li class="active"><a id="tabLogin" data-toggle="tab" href="#login-form"> Đăng nhập
                                        <span class="fa fa-user"></span></a>
                                </li>
                                <li><a id="tabRegister" data-toggle="tab" href="#registration-form"> Đăng kí <span
                                            class="fa fa-pencil"></span></a></li>
                            </ul>
                        </div>
                        <div class="modal-body">
                            <div class="tab-content">
                                <div id="login-form" class="tab-pane fade in active">
                                    <form id="myFormLogin">
                                        <div class="form-group">
                                            <label for="email">Email:</label>
                                            <input type="email" class="form-control" placeholder="Enter email" name="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="pwd">Mật khẩu:</label>
                                            <input type="password" class="form-control" placeholder="Enter password"
                                                name="password">
                                        </div>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <label><input type="checkbox" name="remember"> Ghi nhớ</label>
                                                <a data-toggle="tab" href="#forgot-form" for="pwd">Quên mật khẩu</a>
                                            </div>
                                        </div>
                                        <button type="submit" id="btnLogin" class="btn btn-default">Đăng nhập</button>
                                    </form>
                                </div>
                                <div id="forgot-form" class="tab-pane fade in fade">
                                    <form>
                                        <div class="form-group">
                                            <label for="email">Email:</label>
                                            <input type="email" class="form-control" placeholder="Enter email" name="email">
                                        </div>
                                        <button type="submit" class="btn btn-default">Xác nhận</button>
                                    </form>
                                </div>
                                <div id="registration-form" class="tab-pane fade">
                                    <form id="myForm">
                                        <div class="form-group">
                                            <label for="name">Tên bạn:</label>
                                            <input type="text" class="form-control" placeholder="Enter your name" name="name">
                                        </div>
                                        <div class="form-group">
                                            <label for="ewemail">Email:</label>
                                            <input type="email" class="form-control" placeholder="Enter new email" name="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Mật khẩu:</label>
                                            <input type="password" class="form-control" placeholder="New password" name="password">
                                        </div>
                                        <div class="form-group">
                                            <label for="passwordAgain">Nhập lại Mật khẩu:</label>
                                            <input type="password" class="form-control" placeholder="New password" name="passwordAgain">
                                        </div>
                                        <div class="form-group">
                                            <label for="numberPhone">Số điện thoại:</label>
                                            <input type="text" class="form-control" placeholder="Số điện thoại" name="numberPhone">
                                        </div>
                                        <div class="form-group">
                                            <label for="address">Địa chỉ:</label>
                                            <input type="text" class="form-control" placeholder="Địa chỉ" name="address">
                                        </div>
                                        <div class="form-group">
                                            <label for="id_tp">Thành phố:</label>
                                            <select class="form-control" id="sel1" name="id_tp">
                                                <option value="1">Hà nội</option>
                                                <option value="2">TP. Hồ Chí Minh</option>
                                                <option value="3">Hòa Bình</option>
                                                <option value="4">Hà Giang</option>
                                                <option value="5">Lào Cai</option>
                                                <option value="6">Sơn La</option>
                                                <option value="7">Điện Biên</option>
                                                <option value="8">Lạng Sơn</option>
                                                <option value="9">Cao Bằng</option>
                                                <option value="10">Tuyên Quang</option>
                                                <option value="11">Yên Bái</option>
                                                <option value="12">Ninh Bình</option>
                                                <option value="13">TP. Hải Phòng</option>
                                                <option value="14">Quảng Ninh</option>
                                                <option value="15">Hà Tây</option>
                                                <option value="16">Thái Bình</option>
                                                <option value="17">Thanh Hóa</option>
                                                <option value="18">Nghệ An</option>
                                                <option value="19">Hà Tĩnh</option>
                                                <option value="20">Đắc Lắc</option>
                                                <option value="21">Quảng Bình</option>
                                                <option value="22">Quảng Trị</option>
                                                <option value="23">TP. Huế</option>
                                                <option value="24">Quảng Ngãi</option>
                                                <option value="25">Bình Định</option>
                                                <option value="26">Phú Yên</option>
                                                <option value="27">Khánh Hòa</option>
                                                <option value="28">Gia Lai</option>
                                                <option value="29">Đồng Nai</option>
                                                <option value="30">Bình Thuận</option>
                                                <option value="31">Lâm Đồng</option>
                                                <option value="32">Bà Rịa - Vũng Tàu</option>
                                                <option value="33">Tây Ninh</option>
                                                <option value="34">Đồng Tháp</option>
                                                <option value="35">Ninh Thuận</option>
                                                <option value="36">Vĩnh Long</option>
                                                <option value="37">TP. Cần Thơ</option>
                                                <option value="38">Long An</option>
                                                <option value="39">Tiền Giang</option>
                                                <option value="40">Trà Vinh</option>
                                                <option value="41">Bến Tre</option>
                                                <option value="42">An Giang</option>
                                                <option value="43">Kiên Giang</option>
                                                <option value="44">Lai Châu</option>
                                                <option value="45">Sóc Trăng</option>
                                                <option value="46">Đắc Nông</option>
                                                <option value="47">Phú Thọ</option>
                                                <option value="48">Vĩnh Phúc</option>
                                                <option value="49">Bắc Giang</option>
                                                <option value="50">Thái Nguyên</option>
                                                <option value="51">Bắc Cạn</option>
                                                <option value="52">Hải Dương</option>
                                                <option value="53">Hưng Yên</option>
                                                <option value="54">Nam Định</option>
                                                <option value="55">Hà Nam</option>
                                                <option value="56">Quảng Nam</option>
                                                <option value="57">TP. Đà nẵng</option>
                                                <option value="58">Bình Dương</option>
                                                <option value="59">Bình Phước</option>
                                                <option value="60">Cà Mau</option>
                                                <option value="61">Bạc Liêu</option>
                                                <option value="62">Bắc Ninh</option>
                                            </select>
                                        </div>
                                        <button type="submit" id="btnReg" class="btn btn-default">Đăng kí</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="row">
                        <div class="col-md-3 col-lg-3 hidden-xs hidden-sm" style="padding-right:0;">
                            <div id="listDanhMuc">
                                <div class="dauDanhMuc">
                                    <span>Danh mục sản phẩm<i class="fa fa-chevron-circle-down"></i></span>
                                </div>
                                <ul class="noiDungDanhMuc" style="height: 401px; width: 100%">
                                    <ul>
                                        <li>
                                            <a href="category.html"><img alt="Camera trọn bộ" src="public/images/danh-muc-san-pham/lap-dat-camera-tron-bo.png"><span
                                                    class="nameDanhMuc">Camera trọn bộ </span> <i class="fa fa-chevron-right hidden-md"></i></a>
                                            <ul>
                                                <li>
                                                    <a href="#"><span class="nameDanhMuc">Trọn
                                                            bộ camera giá rẻ</span></a>
                                                    <ul>
                                                        <li>
                                                            <a><span class="nameDanhMuc">Trọn bộ 1 Camera
                                                                    giá rẻ</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                        <li>
                                                            <a href="#"><span class="nameDanhMuc">Trọn bộ 2 camera
                                                                    giá rẻ</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                        <li>
                                                            <a href="#"><span class="nameDanhMuc">Trọn bộ 3 Camera
                                                                    giá rẻ</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                        <li>
                                                            <a href="#"><span class="nameDanhMuc">Trọn bộ 4 Camera
                                                                    giá rẻ</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                    </ul>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <a href="#"><span class="nameDanhMuc">Trọn
                                                            bộ camera HD</span></a>
                                                    <ul>
                                                        <li>
                                                            <a href="#"><span class="nameDanhMuc">Trọn
                                                                    bộ 1 Camera HD</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                        <li>
                                                            <a href="#"><span class="nameDanhMuc">Trọn
                                                                    bộ 2 Camera HD</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                        <li>
                                                            <a href="#1"><span class="nameDanhMuc">Trọn
                                                                    bộ 3 Camera HD</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                        <li>
                                                            <a href="#1"><span class="nameDanhMuc">Trọn
                                                                    bộ 4 Camera HD</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                    </ul>
                                                    <div class="clear"></div>
                                                </li>
                                                <li>
                                                    <a href="#1"><span class="nameDanhMuc">Camera
                                                            Nhập khẩu</span></a>
                                                    <ul>
                                                        <li>
                                                            <a href="#1"><span class="nameDanhMuc">Bộ 2 Camera
                                                                    HIKVISION</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                        <li>
                                                            <a href="#1"><span class="nameDanhMuc">Lắp 1 Camera
                                                                    HIKVISION</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                        <li>
                                                            <a href="#1"><span class="nameDanhMuc">Bộ camera KCE HÀN
                                                                    QUỐC</span></a>
                                                            <div class="clear"></div>
                                                        </li>
                                                    </ul>
                                                    <div class="clear"></div>
                                                </li>
                                            </ul>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <a href="#2"><img alt="Camera giám sát " src="public/images/danh-muc-san-pham/camera-giam-sat.png"><span
                                                    class="nameDanhMuc">Camera giám sát </span><i class="fa fa-chevron-right hidden-md"></i></a>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <a href="#1"><img alt="Đầu ghi hình camera " src="public/images/danh-muc-san-pham/dau-ghi-hinh-camera-quan-sat.png"><span
                                                    class="nameDanhMuc">Đầu ghi hình camera </span><i class="fa fa-chevron-right hidden-md"></i></a>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <a href="#1"><img alt="Phụ kiện camera " src="public/images/danh-muc-san-pham/phu-kien-camera.png"><span
                                                    class="nameDanhMuc">Phụ kiện camera </span><i class="fa fa-chevron-right hidden-md"></i></a>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <a href="#1"><img alt="Thiết bị an ninh " src="public/images/danh-muc-san-pham/camera-thiet-bi-an-ninh.png"><span
                                                    class="nameDanhMuc">Thiết bị an ninh </span><i class="fa fa-chevron-right hidden-md"></i></a>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <a href="#1"><img alt="Máy chấm công " src="public/images/danh-muc-san-pham/may-cham-cong-gia-re.png"><span
                                                    class="nameDanhMuc">Máy chấm công </span><i class="fa fa-chevron-right hidden-md"></i></a>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <a href="#/1"><img alt="Tổng đài - Bộ đàm " src="public/images/danh-muc-san-pham/78-32.png"><span
                                                    class="nameDanhMuc">Tổng đài - Bộ đàm </span><i class="fa fa-chevron-right hidden-md"></i></a>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <a href="#/1"><img alt="Thiết bị văn phòng " src="public/images/danh-muc-san-pham/thiet-bi-van-phong.png"><span
                                                    class="nameDanhMuc">Thiết bị văn phòng </span><i class="fa fa-chevron-right hidden-md"></i></a>
                                            <div class="clear"></div>
                                        </li>
                                    </ul>
                                    <div class="clear"></div>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 col-lg-9">
                            <div class="row">
                                <div class="col-xs-12 col-lg-8" style="padding:0;">
                                    <div id="timKiem">
                                        <form>
                                            <input type="text" value="" id="nutTimKiem" class="inputTimKiem"
                                                placeholder="Tìm kiếm sản phẩm ...">
                                            <div class="clear"></div>
                                            <input type="submit" value="Tìm kiếm" id="buttonEnter" class="buttonEnter">
                                        </form>
                                    </div>
                                </div>
                                <div class="col-lg-4 hidden-xs hidden-sm hidden-md" style="padding-left:0;">
                                    <button type="button" class="btn btn-danger button-support" data-toggle="modal"
                                        data-target="#hotro"><img src="./public/images/ui_images/yahoo-smile.png">&nbsp;Hỗ
                                        trợ trực tuyến</button>
                                        <div class="modal fade" id="hotro" role="dialog" style="display: none">
                                            <div class="modal-dialog modal-md">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h2>Hỗ trợ trực tuyến </h2>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-sm-4 col-md-4">
                                                                <div class="hotlinehotro">
                                                                    <strong> Mr.Tấn Lực</strong>
                                                                    <p>Tư vấn bán hàng</p>
                                                                    <p>SĐT: 0328826810</p>
        
        
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4 col-md-4">
                                                                <div class="hotlinehotro">
                                                                    <strong>Mr.Thanh Mến </strong>
                                                                    <p>Hỗ trợ bảo trì bảo hành</p>
                                                                    <p>SĐT: 0989910161</p>
        
        
                                                                </div>
        
                                                            </div>
        
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <!-- End Menu -->
      <div class="clear"></div>
      </div> <!-- Top end here -->
      <!-- Top end here -->
      <div class="container">
         <div class="row">
            <div class="col-xs-12">
               <div class="row">
                  <div class="col-md-3 hidden-xs hidden-sm">
                     <div class="header">
                        <span>Camera trọn bộ </span>
                     </div>
                     <div class="body">
                        <a class="sort_list" href="#category">Trọn bộ camera giá rẻ 1</a>
                        <a class="sort_list" href="#category">Trọn bộ camera HD</a>
                        <a class="sort_list" href="#category">Camera Nhập khẩu</a>
                     </div>
                  </div>
                  <div class="col-xs-12 col-md-9">
                     <div class="clear"></div>
                     <div class="header4">
                        <h1>Camera trọn bộ</h1>
                        <div class="clear"></div>
                     </div>
                     <div class="clear"></div>
                     <div class="product_list">
                        <div class="row">
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham">
                                 <img alt="Hình Sản phâm" src="./public/images/san-pham/lap-dat-tron-bo-1-camera-gia-re.jpg">
                                 </a>
                                 <div class="caption">
                                    <a href="<%=request.getContextPath()%>/ChiTietSanPham?id=11">
                                       <h3>Lắp Đặt Trọn Bộ 1 Camera Giá Rẻ</h3>
                                    </a>
                                    <div class="clear"></div>
                                    <span class="price">2,199,000 VNĐ</span>
                                 </div>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham">
                                 <img alt="Hình Sản phâm" src="./public/images/san-pham/lap-dat-camera-gia-re-ha-noi.jpg">
                                 </a>
                                 <div class="caption">
                                    <a href="#chitietsanpham">
                                       <h3>Lắp đặt camera giá rẻ</h3>
                                    </a>
                                    <div class="clear"></div>
                                    <span class="price">2,199,000 VNĐ</span>
                                 </div>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham">
                                 <img alt="Hình Sản phâm" src="./public/images/san-pham/lap-dat-camera-gia-re-ha-noi.jpg">
                                 </a>
                                 <div class="caption">
                                    <a href="#chitietsanpham">
                                       <h3>Lắp đặt camera giá rẻ</h3>
                                    </a>
                                    <div class="clear"></div>
                                    <span class="price">2,199,000 VNĐ</span>
                                 </div>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham">
                                 <img alt="Hình Sản phâm" src="./public/images/san-pham/lap-dat-tron-bo-2-camera-gia-re1.jpg">
                                 </a>
                                 <div class="caption">
                                    <a href="#chitietsanpham">
                                       <h3>Lắp Đặt Trọn Bộ 2 Camera Giá Rẻ</h3>
                                    </a>
                                    <div class="clear"></div>
                                    <span class="price">3,199,000 VNĐ</span>
                                 </div>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham">
                                 <img alt="Hình Sản phâm" src="">
                                 </a>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham">
                                 <img alt="Hình Sản phâm" src="">
                                 </a>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham">
                                 <img alt="Hình Sản phâm" src="">
                                 </a>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham">
                                 <img alt="Hình Sản phâm" src="
                                    ">
                                 </a>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham">
                                 <img alt="Hình Sản phâm" src="">
                                 </a>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham0">
                                 <img alt="Hình Sản phâm" src="">
                                 </a>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham1">
                                 <img alt="Hình Sản phâm" src="">
                                 </a>
                              </div>
                           </div>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                 <a href="#chitietsanpham2">
                                 <img alt="Hình Sản phâm" src="">
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="clear"></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div id="bottom">
            <div class="container">
               <div class="row">
                  <div class="col-xs-12">
                     <div class="row">
                        <div class="col-xs-12 col-md-4 col-lg-3">
                           <div class="tabBottom">
                              <div class="tenTabBottom">Cam kết</div>
                              <div class="claim">Sản phẩm hàng hóa chính hãng, đa dạng, phong phú</div>
                              <div class="claim">Luôn luôn giá rẻ và khuyến mại không ngừng</div>
                              <div class="claim">Dịch vụ chăm sóc khách hàng uy tín, tận tâm</div>
                           </div>
                        </div>
                        <div class="col-xs-12 col-md-4 col-lg-3">
                           <div class="tabBottom2">
                              <div class="tenTabBottom">Hỗ trợ khách hàng</div>
                              <ul>
                                 <li><a href="./xemcameradt.html">Xem camera giám sát qua điện thoại</a></li>
                                 <li><a href="#">Xem camera quan sát qua máy tính</a></li>
                                 <li><a href="#">Download tài liệu</a></li>
                                 <li><a href="#">HD cài đặt phần mềm Teamviewer</a></li>
                              </ul>
                           </div>
                        </div>
                        <div class="col-xs-12 col-md-4 col-lg-3">
                           <div class="tabBottom2">
                              <div class="tenTabBottom">Thông tin công ty</div>
                              <ul>
                                 <li><a href="#">Giới thiệu</a></li>
                                 <li><a href="#">Tuyển dụng</a></li>
                                 <li><a href="#">Chính sách</a></li>
                              </ul>
                           </div>
                        </div>
                        <div class="col-xs-12 col-md-4 col-lg-3 hidden-md">
                           <div class="tabBottom2">
                              <div class="tenTabBottom">Tổng đài trợ giúp</div>
                              <div id="lienHeFacebook">
                                 <ul>
                                    <li>Kết nối với chúng tôi </li>
                                 </ul>
                                 <div id="logoFacebook">
                                    <a target="_blank" rel="nofollow" href="https://www.facebook.com/groups/291188018163318/">
                                    <img src="./public/images/ui_images/f_fb.png">
                                    </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="container-fluid bg-footer">
            <div class="row">
               <div class="col-xs-12 col-xs-offset-0 col-md-10 col-md-offset-1">
                  <div class="row">
                     <div class="col-md-2 hidden-xs hidden-sm">
                        <div class="f-logo">
                           <a href="https://www.facebook.com/groups/291188018163318/">
                           <img title="LẮP ĐẶT CAMERA QUAN SÁT GIÁ RẺ" alt="Camera MLC Việt Nam tự hào Nhà cung cấp thiết bị camera giám sát giá rẻ uy tín trên toàn quốc"
                              style="border-radius: 30px;" src="./public/images/ui_images/logo.jpg">
                           </a>
                        </div>
                     </div>
                     <div class="col-xs-12 col-md-5">
                        <div class="diaChiText">
                           <p><span style="color:#ff6600;"><strong>LẮP ĐẶT CAMERA TẠI TP.HCM</strong></span><br>
                              Địa chỉ : <span style="color:#FFD700;">KTX B ĐH Nông Lâm </span><br>
                              Điện thoại : <span style="color:#FFD700;">0328826810 - 0989910161</span><br>
                              Website : <span style="color:#FFD700;">http://mlc.vn</span>
                           </p>
                           <p><span style="color:#FF8C00;">Giới thiệu dịch vụ </span><span style="color:#FF8C00;">lắp
                              đặt camera</span><span style="color:#FF8C00;">
                              của
                              MLC TP.HCM</span>
                           </p>
                           <p><em>Trước nhu cầu của thị trường và mở rộng ngành dịch vụ Công ty MLC TP.HCM được
                              sáng lập
                              hoạt động triển khai lắp đặt Internet Cáp quang – Camera giám sát
                              tại&nbsp;TP.HCM.
                              "Hiện chúng tôi đang phát triển kết hợp với một số <strong>đơn vị lắp đặt
                              camera uy tín</strong>
                              tạo nên một thị trường dịch vụ công nghệ uy tín trên toàn quốc".</em>
                           </p>
                           <p>&nbsp;</p>
                        </div>
                     </div>
                     <div class="col-xs-12 col-md-5">
                        <div class="diaChiText">
                           <p><strong><span style="color:#FF8C00;">Trụ sở&nbsp;MLC</span></strong><br style="font-size: 14px; line-height: 22.3999996185303px;">
                              <span style="font-size: 14px; line-height: 22.3999996185303px;">Địa chỉ : <span style="color:#FFD700;">Linh
                              Trung, Thủ Đức, TP.HCM</span></span><br>
                              Điện thoại: <span style="color:#FFD700;">0328826810</span>
                           </p>
                           <p>&nbsp;</p>
                           <p><span style="color:#FF8C00;">Hiện chúng tôi có các điểm dịch vụ như: </span></p>
                           <p><span style="color:#cccccc;">Thủ Đức, Bình Thạnh, Quận 1, Quận 4, Quận 5 và các vùng
                              lân cận
                              </span>
                           </p>
                           <p>&nbsp;</p>
                           <p style="text-align: right;"><img alt="camera fpt đang ký bộ công thương" src="./public/images/ui_images/camera-fpt-thong-bao-bo-cong-thuong.png"></p>
                        </div>
                     </div>
                  </div>
                  <div class="clear"></div>
               </div>
               <div class="clear"></div>
            </div>
         </div>
         </div>
      <!-- <div data-include="footer"> </div> -->
      </div>
      <script>
         $(function () {
             var includes = $('[data-include]');
             jQuery.each(includes, function () {
                 var file = 'public/layout/' + $(this).data('include') + '.html';
                 $(this).load(file);
             });
         });
      </script>
      <style>
      </style>
   </body>
</html>