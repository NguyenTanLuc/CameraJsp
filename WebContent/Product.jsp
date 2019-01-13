<%@page import="dao.GetDataCategory"%>
<%@page import="dao.GetDataProduct"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- CSS and Jquery start here -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Thông tin</title>
<link rel="stylesheet" type="text/css"
	href="public/stylesheets/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="public/stylesheets/normalize.css" />
<link rel="stylesheet" type="text/css" href="public/stylesheets/app.css" />
<link rel="stylesheet" type="text/css"
	href="public/stylesheets/page.css" />
<link rel="stylesheet" type="text/css"
	href="public/font-awesome-4.7.0/css/font-awesome.min.css" />
<script src="public/js/jquery-2.1.3.min.js"></script>
<script src="./public/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>

<body>
<jsp:include page="public/layout/header1.jsp"></jsp:include>
	<%
		Product product = new GetDataProduct().getProDuctById(Integer.parseInt(request.getParameter("id")));
		if (product != null) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 pad-btm">
				<div class="row">
					<div class="col-xs-12">
						<div class="row">
							<div class="col-xs-12 col-md-7">
								<div class=""
									style="width: 100%; background: #fff; border: 1px solid #ccc; padding: 10px;">
									<a data-toggle="modal" data-target=".bs-example-modal-lg">
										<img
										style="cursor: pointer; display: block; margin: 0 auto; background: #fff;"
										src="public/images/san-pham/<%=product.getImage()%>">
									</a>
								</div>
							</div>

							<div class="col-xs-12 col-md-5">

								<div class="prd-desc equalheight1" style="height: 389px;">
									<h1 class="header2"><%=product.getName()%></h1>
									<div class="clear"></div>
									<p>
										Mã sản phẩm: MSP75-<%=product.getId()%></p>
									<p>
										Thương hiệu:
										<%=GetDataCategory.getCategoryById(product.getIdCategory()).getName()%></p>
									<p>
										Giá bán: <span class="detail-price"><%=product.getPrice()%>
											đ</span>
									</p>
									<p>
										Tình trạng: <span class="detail-stock"><%if(product.getQuatity()==0){ %>Hết hàng <%}else{ %> Còn hàng<%} %></span>
									</p>
									<p>
										Bảo hành: <span class="detail-stock">24 Tháng</span>
									</p>
									<div class="clear"></div>
									<form action="<%=request.getContextPath()%>/addProductCart" class="addcart" 
										method="post" accept-charset="utf-8">
										<input type="hidden" name="id" value="<%=product.getId()%>"> 
										<input type="hidden" name="name" value="Lắp 2 Camera HIKVISION">
										<input type="hidden" name="price" value="2599000"> 
										<input type="hidden" name="SKU" value="HIK-02"> 
										<input type="hidden" name="image" value="san-pham/lap-2-camera-hikvision.jpg">
										<input type="hidden" name="slug" value="lap-2-camera-hikvision">
										<p>
										Số lượng: <input type="number" id="cout" name ="quality" value ="1" class="form-control text-center" min ="1" style="width: 15%">
										</p>
										<input type="submit" name="action" value="Mua ngay"
											class="btn btn-danger">
										<input id="addItem3" onclick="addToCart(<%=product.getId()%>)" value="Thêm giỏ hàng" class="btn btn-danger"> 
									</form>
								</div>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="col-xs-12 col-md-12">
					<div class="hidden-xs">
						<ul class="nav nav-tabs custom-tabs2" role="tablist">
							<li role="presentation" class="active"><a href="#chitiet"
								aria-controls="chitiet" role="tab" data-toggle="tab"
								aria-expanded="false">Chi tiết sản phẩm</a></li>
							<li role="presentation"><a href="#thongso"
								aria-controls="thongso" role="tab" data-toggle="tab"
								aria-expanded="true">Thông số kỹ thuật</a></li>
						</ul>
						<div class="tab-content">
							<%=product.getDetai()%>
							<%=product.getThongso()%>

						</div>

					</div>


				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>
	<div id="bottom">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="row">
						<div class="col-xs-12 col-md-4 col-lg-3">
							<div class="tabBottom">
								<div class="tenTabBottom">Cam kết</div>
								<div class="claim">Sản phẩm hàng hóa chính hãng, đa dạng,
									phong phú</div>
								<div class="claim">Luôn luôn giá rẻ và khuyến mại không
									ngừng</div>
								<div class="claim">Dịch vụ chăm sóc khách hàng uy tín, tận
									tâm</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-4 col-lg-3">
							<div class="tabBottom2">
								<div class="tenTabBottom">Hỗ trợ khách hàng</div>
								<ul>
									<li><a href="./xemcameradt.html">Xem camera giám sát
											qua điện thoại</a></li>
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
										<li>Kết nối với chúng tôi</li>
									</ul>
									<div id="logoFacebook">
										<a target="_blank" rel="nofollow"
											href="https://www.facebook.com/groups/291188018163318/">
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
							<a href="https://www.facebook.com/groups/291188018163318/"> <img
								title="LẮP ĐẶT CAMERA QUAN SÁT GIÁ RẺ"
								alt="Camera MLC Việt Nam tự hào Nhà cung cấp thiết bị camera giám sát giá rẻ uy tín trên toàn quốc"
								style="border-radius: 30px;"
								src="./public/images/ui_images/logo.jpg">
							</a>
						</div>
					</div>
					<div class="col-xs-12 col-md-5">
						<div class="diaChiText">
							<p>
								<span style="color: #ff6600;"><strong>LẮP ĐẶT
										CAMERA TẠI TP.HCM</strong></span><br> Địa chỉ : <span
									style="color: #FFD700;">KTX B ĐH Nông Lâm </span><br> Điện
								thoại : <span style="color: #FFD700;">0328826810 -
									0989910161</span><br> Website : <span style="color: #FFD700;">http://mlc.vn</span>
							</p>
							<p>
								<span style="color: #FF8C00;">Giới thiệu dịch vụ </span><span
									style="color: #FF8C00;">lắp đặt camera</span><span
									style="color: #FF8C00;"> của MLC TP.HCM</span>
							</p>
							<p>
								<em>Trước nhu cầu của thị trường và mở rộng ngành dịch vụ
									Công ty MLC TP.HCM được sáng lập hoạt động triển khai lắp đặt
									Internet Cáp quang – Camera giám sát tại&nbsp;TP.HCM. "Hiện
									chúng tôi đang phát triển kết hợp với một số <strong>đơn
										vị lắp đặt camera uy tín</strong> tạo nên một thị trường dịch vụ công
									nghệ uy tín trên toàn quốc".
								</em>
							</p>
							<p>&nbsp;</p>
						</div>
					</div>
					<div class="col-xs-12 col-md-5">
						<div class="diaChiText">
							<p>
								<strong><span style="color: #FF8C00;">Trụ
										sở&nbsp;MLC</span></strong><br
									style="font-size: 14px; line-height: 22.3999996185303px;">
								<span style="font-size: 14px; line-height: 22.3999996185303px;">Địa
									chỉ : <span style="color: #FFD700;">Linh Trung, Thủ Đức,
										TP.HCM</span>
								</span><br> Điện thoại: <span style="color: #FFD700;">0328826810</span>
							</p>
							<p>&nbsp;</p>
							<p>
								<span style="color: #FF8C00;">Hiện chúng tôi có các điểm
									dịch vụ như: </span>
							</p>
							<p>
								<span style="color: #cccccc;">Thủ Đức, Bình Thạnh, Quận
									1, Quận 4, Quận 5 và các vùng lân cận </span>
							</p>
							<p>&nbsp;</p>
							<p style="text-align: right;">
								<img alt="camera fpt đang ký bộ công thương"
									src="./public/images/ui_images/camera-fpt-thong-bao-bo-cong-thuong.png">
							</p>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</body>

<script> 
    function addToCart(i) {
        var idsp = i;
        $.ajax({
            type : "post",
            dataType : "text",
            data:{
                id : i,
                quality : document.getElementById("cout").value,
                stt : "mua"
                },
                url: "<%=request.getContextPath()%>/addProductCart",
                success: function(data) {
                $("#qualityCart").text(data);
                  
        }
        
    })}
    </script>

</html>