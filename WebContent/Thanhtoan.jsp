<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <!-- CSS and Jquery start here -->
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Thanh Toán</title>
      <link rel="stylesheet" type="text/css" href="public/stylesheets/bootstrap.min.css" />
      <link rel="stylesheet" type="text/css" href="public/stylesheets/normalize.css" />
      <link rel="stylesheet" type="text/css" href="public/stylesheets/app.css" />
      <link rel="stylesheet" type="text/css" href="public/stylesheets/page.css" />
      <link rel="stylesheet" type="text/css" href="public/font-awesome-4.7.0/css/font-awesome.min.css" />
      <script src="public/js/jquery-2.1.3.min.js"></script>
      <script src="./public/js/bootstrap.min.js"></script>
   </head>
   <body>
   <% 
   if( session.getAttribute("user") == null && session.getAttribute("cart") == null){
	   response.sendRedirect("cart.jsp");
   }else{
   User user =  (User) session.getAttribute("user");
   %> 
      <div>
           <jsp:include page="public/layout/header1.jsp"></jsp:include>
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
      <div class="clear"></div>
      </div> <!-- Top end here -->
      <div class="container">
         <div class="row">
            <div class="col-xs-12">
               <div class="header">
                  <span>Kiểm tra thông tin nhận hàng</span>
               </div>
               <table id="cartthanhtoan" class="hidden-xs hidden-sm">
                  <tbody>
                     <tr>
                        <td colspan="2">
                           <span class="cartthanhtoan_3_header">Hoàn tất đơn hàng</span>
                        </td>
                     </tr>
                     <tr>
                        <td style="width:40%;">
                           <span class="circle">1</span>
                           <span style="font-weight:bold;color:#555;">Thông tin thanh toán</span>
                           <div class="form_label_input">
                              <label style="font-weight:bold" for="fullname">Khách hàng <span class="required"> *
                              </span></label>
                              <span><input class="form-control" type="text" readonly="readonly" name="fullname" value="<%=user.getName()%>"></span>
                           </div>
                           <div class="form_label_input">
                              <label style="font-weight:bold" for="phone">Điện thoại <span class="required"> *
                              </span></label>
                              <span><input readonly="readonly" class="form-control" type="text" name="phone" value="<%=user.getPhone()%>"></span>
                           </div>
                           <div class="form_label_input">
                              <label style="font-weight:bold" for="email">Email <span class="required"> * </span></label>
                              <span><input readonly="readonly" class="form-control" type="text" name="email" value="<%=user.getEmail()%>"></span>
                           </div>
                           <div class="form_label_input"><label style="font-weight:bold" for="address">Địa chỉ
                              <span class="required"> * </span></label>
                              <span>
                              <input readonly="readonly" class="form-control" type="text" name="address" value="<%=user.getAddress()%>"></span>
                           </div>
                           <span class="circle">2</span>
                           <span style="font-weight:bold;color:#555;">Địa chỉ giao hàng </span>
                           <div class="form_label_input">
                              <label style="font-weight:bold;vertical-align:top;" for="ship_address">Địa chỉ
                              <span class="required"> * </span></label>
                              <span>
                              <input class="form-control" type="text" name="ship_address" placeholder= "<%=user.getAddress()%>"></span>
                           </div>
                        </td>
                        <td style="vertical-align:top">
                           <span class="circle">3</span>
                           <span style="font-weight:bold;color:#555;">Xác nhận đơn hàng</span>
                           <table id="cartthanhtoan" class="inside">
                              <tbody>
                                 <tr>
                                    <td colspan="2" class="text_center">Sản phẩm</td>
                                    <td class="text_right">Giá</td>
                                 </tr>
                                 <tr>
                                    <td class="text_center">
                                       <img class="cartthanhtoan_img" style="width: 200px;height: 200px" src="#"
                                          alt="Hình sản phẩm">
                                    </td>
                                    <td>Tên sản phẩm</td>
                                    <td class="text_right">
                                       <span style="display:block;color:red;font-weight:bold;margin: 0 0 5px 0;">0
                                       VNĐ</span>
                                       <span>Số lượng: <input type="number" style="width: 15%"></span>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td class="text_right" colspan="1">
                                       <strong>Mã giảm giá:</strong>
                                    </td>
                                    <td class="text_right" colspan="2">
                                       <input id="key_sales_off" class="input_keyoff form-control" style="float: left; width: 60%;"
                                          name="key_sales_off" placeholder="Nhập mã giảm giá">
                                       <input id="btnApdung" class="btn btn-default" type="button" value="Áp dụng"
                                          style="float: left">
                                 </tr>
                                 <tr>
                                    <td class="text_right" colspan="2">
                                       <strong>Tổng cộng:</strong>
                                    </td>
                                    <td class="text_right" colspan="2">
                                       <span id="tongtien" class="tongtien" style="display:block;color:red;font-weight:bold;">
                                       0 VNĐ</span>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                           <input class="btn btn-danger" type=submit value="Mua hàng" style="float:right">
                     <tr class="no-border">
                        <td colspan="7">
                           <input class="btn btn-warning" type="button" value="Trở về giỏ hàng">
                        </td>
                     </tr>
                  </tbody>
               </table>
               <table id="cartthanhtoan" class="hidden-md hidden-lg">
                  <tbody>
                     <form id="formThanhToanTiny" action="" method="post" accept-charset="utf-8"></form>
                     <tr>
                        <td>
                           <span class="cartthanhtoan_3_header">Hoàn tất đơn hàng</span>
                           <input type="hidden" name="id_user" value="25">
                           <input id="code_order1" type="hidden" name="code_order" value="MDH_1541174655">
                        </td>
                     </tr>
                     <tr>
                        <td style="width:40%;">
                           <input type="hidden" name="_token" value="QSLPmDTi3IW77m41e0EQqO8kw2TJscIipRQ5XhWO">
                           <span class="circle">1</span>
                           <span style="font-weight:bold;color:#555;">Thông tin thanh toán</span>
                           <div class="form_label_input">
                              <label style="font-weight:bold" for="fullname">Khách hàng <span class="required"> *
                              </span></label>
                              <span><input class="form-control" type="text" name="fullname" value="Tùng Tôm 2"></span>
                           </div>
                           <div class="form_label_input">
                              <label style="font-weight:bold" for="phone">Điện thoại <span class="required"> *
                              </span></label>
                              <span><input class="form-control" type="text" name="phone" value="01632635825"></span>
                           </div>
                           <div class="form_label_input">
                              <label style="font-weight:bold" for="email">Email <span class="required"> * </span></label>
                              <span><input class="form-control" type="text" name="email" value="nguyenwipwa@gmail.com"></span>
                           </div>
                           <div class="form_label_input"><label style="font-weight:bold" for="address">Địa chỉ
                              <span class="required"> * </span></label>
                              <span>
                              <input class="form-control" type="text" name="address" value="Gò dưa 1"></span>
                           </div>
                           <div class="form_label_input"><label style="font-weight:bold" for="address">Địa chỉ
                              <span class="required"> * </span></label>
                              <span>
                              <input class="form-control" type="text" name="thanhpho" value="TP. Hồ Chí Minh"></span>
                           </div>
                           <span class="circle">2</span>
                           <span style="font-weight:bold;color:#555;">Địa chỉ giao hàng</span>
                           <div class="form_label_input">
                              <label style="font-weight:bold;vertical-align:top;" for="ship_address">Địa chỉ
                              <span class="required"> * </span></label>
                              <span>
                              <input class="form-control" type="text" name="ship_address" value="Gò dưa 1, TP. Hồ Chí Minh"></span>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <td style="vertical-align:top">
                           <span class="circle">3</span><span style="font-weight:bold;color:#555;">Xác nhận đơn
                           hàng</span>
                           <table id="cartthanhtoan" class="inside">
                              <tbody>
                                 <tr>
                                    <td class="text_center">
                                       <img class="cartthanhtoan_img" src="http://localhost/CameraGiamSat1/public/images/san-pham/bao-trom-khong-day-Karassn-KS-258B.jpg">
                                    </td>
                                 </tr>
                                 <tr>
                                    <td><b>Báo Trộm Không Dây Karassn KS-258B</b></td>
                                 </tr>
                                 <tr>
                                    <td class="text_right">
                                       <span>Số lượng: 0</span>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td class="text_right" colspan="1">
                                       <strong>Mã giảm giá</strong>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td class="text_right" colspan="1">
                                       <a href="javascript::void(0)" onclick="$('.input_keyoff').css('display', 'block'); $(this).hide()">
                                       Áp mã giảm giá </a>
                                       <input id="key_sales_off1" class="input_keyoff form-control" style="display: none;"
                                          name="key_sales_off" placeholder="Nhập mã giảm giá">
                                    </td>
                                 </tr>
                                 <tr>
                                    <td class="text_right" colspan="1">
                                       <input onclick="formTiny()" id="btnApdung" class="input_keyoff" style="display: none;"
                                          type="button" name="" value="Áp dụng">
                                    </td>
                                 </tr>
                                 <tr id="giamgia" class="giamgia" style="display: none;">
                                    <td class="text_right" colspan="1">
                                       <strong>Tiền được giảm</strong>
                                    </td>
                                 </tr>
                                 <tr class="giamgia" style="display: none;">
                                    <td class="text_right" colspan="1">
                                       <span id="phamTramGiam" class="phamTramGiam" style="display:block;color:green;font-weight:bold;"></span>
                                    </td>
                                 </tr>
                                 <tr class="giamgia" style="display: none;">
                                    <td class="text_right" colspan="1">
                                       <span id="tiengiam" class="tiengiam" style="display:block;color:blue;font-weight:bold;">950,000
                                       VNĐ</span>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td class="text_right" colspan="2"><strong>Tổng cộng:</strong></td>
                                 </tr>
                                 <tr>
                                    <td class="text_right" colspan="2">
                                       <span id="tongtien" class="tongtien" style="display:block;color:red;font-weight:bold;">950,000
                                       VNĐ</span>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                           <input id="" type="submit" name="submit_cartthanhtoan" value="Mua hàng" class="btn3"
                              style="float:right">
                        </td>
                     </tr>
                     <tr class="no-border">
                        <td colspan="7">
                           <input class="float_left btn2" type="button" value="Trở về giỏ hàng" onclick="location.href='http://localhost/CameraGiamSat1/gio-hang'">
                        </td>
                     </tr>
                  </tbody>
               </table>
               <%} %>
            </div>
         </div>
         <div class="clear"></div>
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
                        <a href="http://fptcamera.vn/">
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
                        <p><span style="color:#FF8C00;">Giới thiệu dịch vụ </span><a href="https://sites.google.com/site/camerafptvietnam/"><span
                           style="color:#FF8C00;">lắp đặt camera</span></a><span style="color:#FF8C00;">
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
   </body>
</html>