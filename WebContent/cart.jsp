<%@page import="model.Catelogy"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.NavTab"%>
<%@page import="dao.GetDataCategory"%>
<%@page import="util.Utils"%>
<%@page import="java.util.Locale"%>
<%@page import="dao.GetDataProduct"%>
<%@page import="model.Product"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.TreeMap"%>


>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="vi" charset="utf-8">
<head>
    <!-- CSS and Jquery start here -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" type="text/css" href="public/stylesheets/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="public/stylesheets/normalize.css" />
    <link rel="stylesheet" type="text/css" href="public/stylesheets/app.css" />
    <link rel="stylesheet" type="text/css" href="public/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="public/stylesheets/page.css">
    <script src="public/js/jquery-2.1.3.min.js"></script>
    <script src="./public/js/bootstrap.min.js"></script>
</head>

<body>
    <!-- <div data-include="topallPageProduct"> </div> -->
    <jsp:include page="public/layout/header1.jsp"></jsp:include>
   <jsp:include page="public/layout/headerPage.jsp"></jsp:include>
    <div class="clear"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="header"> <span id="headercart">Giỏ hàng</span></div>
                <%TreeMap<Integer,Integer> map =  (TreeMap<Integer, Integer>) session.getAttribute("cart");
				 if (map == null) map = new TreeMap<Integer, Integer>();%>
                <form action="<%=request.getContextPath()%>/Updatecart" method="post">
                    <table class="cart">
                        <tbody>
                            <tr>
                                <th style="width: 5%;"></th>
                                <th style="width: 30%">Mã - Tên sản phẩm</th>
                                <th style="width: 15%">Hình ảnh</th>
                                <th style="width: 10%">Giá</th>
                                <th style="width: 10%">Số lượng</th>
                                <th style="width: 20%">Thành tiền</th>
                            </tr>
                            <%Set<Entry<Integer, Integer>> setTreeMap = map.entrySet();
                            int i =0;
                            double total =0;
                            if(setTreeMap.size()!=0){
                    	    for (Entry<Integer, Integer> entry : setTreeMap) { 
                    	    Product product = GetDataProduct.getProDuctById(entry.getKey());
                    	    int quality = entry.getValue();
                    	     total += product.getPrice() * quality;
                    	    %>
                    	    <tr>
                                                <td><a title="Xóa sản phẩm" style="font-size:20px;color:#000;" href=""><i class="fa fa-trash"></i></a></td>
                                                <td><b><%=product.getName() %></b></td>
                                                <td><img class="cart_img" src="public/images/san-pham/<%=product.getImage()%>" style=" width: 100px;display: block;margin: 0 auto;"></td>
												<td style="color:#ff0000;font-weight:bold;"><%=Utils.format(product.getPrice()) %>  VNĐ</td>
                                                <td style="width:92px;color:#ff0000;font-weight:bold;"> <input type="number" name ="quality" value ="<%=quality %>" min = "1" class="form-control text-center" onchange ="thanhtien(<%=product.getPrice() %>,<%=i %>,<%=total-(product.getPrice() * quality) %> )" style="width: 70%"></td>
                                                <td id="thanhtien<%=i%>" style="width:92px;color:#ff0000;font-weight:bold;"	><%=Utils.format(product.getPrice() * quality) %>  VNĐ</td>
                                                <input type="hidden" name ="id" style="display: hidden" value="<%=product.getId() %>" >
                             </tr>
                             
                    		<%i++;} %>
                    		<tr>
                                                <td colspan="5">Tổng cộng</td>
                                                <td id="total"style="color:#ff0000;font-weight:bold;"><%=Utils.format(total) %>VNĐ</td>
                                            </tr>
                    	    	<%}else{ %>
                            <tr>
                            
                                <td colspan="6">
                                    <strong>
                                        <center>Chưa có sản phẩm nào!</center>
                                    </strong>
                                </td>
                            </tr>
                            <%} %>
                            <tr>
                                <td colspan="6">
                                    <input type="submit" value="Thanh Toán" class="btn btn-danger" style="float: right">
                                	<input style="float:right;margin:5px" class="btn3" type="submit" value="Cập nhật số lượng">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <!-- <div data-include="footer"> </div> -->
    <!-- Footer  -->
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
<script type="text/javascript">
function thanhtien(price,i,total) {
	var to = total;
	var pri = price;
	var quali = document.getElementsByName("quality")[i].value;
	var tien= (pri * quali);
		to+= tien;
	const formatter = new Intl.NumberFormat('en-US', {
		  style: 'currency',
		  currency: 'VND',
		  minimumFractionDigits: 0
		})
	$("#thanhtien"+i).text(formatter.format(tien)+ " VNĐ");
	$("#total").text(formatter.format(to)+ " VNĐ");
}
function setThanhTien(tien) {
	var ti = tien;
	
	
}
</script>
<script>
    $(function () {
        var includes = $('[data-include]');
        jQuery.each(includes, function () {
            var file = 'public/layout/' + $(this).data('include') + '.html';
            $(this).load(file);
        });
    });
</script>

</html>