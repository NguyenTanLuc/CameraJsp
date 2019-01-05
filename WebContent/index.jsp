<%@page import="model.Nav_tab"%>
<%@page import="dao.NavTab"%>
<%@page import="dao.GetDataCategory"%>
<%@page import="dao.ConectionDB"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Catelogy"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="controller.Result"%>
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
<!-- <link rel="stylesheet" type="text/css" href="public/stylesheets/bootstrap.css" /> -->
<link rel="stylesheet" type="text/css"
	href="public/stylesheets/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="public/stylesheets/normalize.css" />
<link rel="stylesheet" type="text/css" href="public/stylesheets/app.css" />
<link rel="stylesheet" type="text/css"
	href="public/font-awesome-4.7.0/css/font-awesome.min.css" />
<script src="public/js/jquery-2.1.3.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="./public/js/bootstrap.min.js"></script>

</head>

<script> function lookKeyWord(key) {
			var keyword = document.getElementById("searchSgg").value;
			if (keyword.length == 0) {
				$('#autoSuggestionsList').fadeOut(400);
			}else{
			$.ajax({
				type: "post",
				dataType : "text",
				data:{
					keyword : keyword
				},
				url: "<%=request.getContextPath()%>/SearchProduct" ,
				success: 
						function(data) {
					 var obj = JSON.parse(data);
					 var root = '<%=request.getContextPath()%>/Product.jsp?id=';
					 alert (root);
						 var strhtml = '';
			                strhtml += '<div class="sgg-outer">';
					 for (var i = 0; i < obj.length && i <=6; i++) {
						 if(obj[i] != null){
			                        strhtml += '<div class="sgg-row">';
			                            strhtml += '<div class="sgg-image"><img width="50" height="50" src="public/images/san-pham/' + obj[i].image + '"/></div>';
			                            strhtml += '<div class="sgg-right">';
			                                strhtml += '<div class="sgg-title"><a href="'+root + obj[i].id + '">' + obj[i].name + '</a></div>';
			                                strhtml += '<div class="sgg-sellprice">' + parseFloat(obj[i].price).toFixed().replace(/./g, function(c, i, a) {return i && c !== "." && ((a.length - i) % 3 === 0) ? '.' + c : c;}) + ' đ</div>';
			                            strhtml += '</div>';
			                        strhtml += '</div>';
	                    		}
					 }
	               			strhtml += '</div>';
				            $('#autoSuggestionsList').html(strhtml);

						
					}
						
				
			})
			
		}}	
		</script>
<body lang="vi">

<%GetDataCategory dataCategory = new GetDataCategory();
	NavTab navTab = new NavTab();%>
	<!-- Top start here -->
	<!-- <div data-include="header"> </div> -->
	<jsp:include page="public/layout/header1.jsp"></jsp:include>
	<!-- Top end here -->

	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="row">
					<div class="col-md-4 col-lg-3" style="padding-right: 0;">
						<div id="listDanhMuc">
							<div class="dauDanhMuc">
								<span>Danh mục sản phẩm<i
									class="fa fa-chevron-circle-down"></i></span>
							</div>
							<ul class="noiDungDanhMuc" style="height: 401px;">
								<ul>
									<%
										ArrayList<Catelogy> list = dataCategory.getAllCategory();
										for (int i = 0; i < list.size(); i++) {
											if (list.get(i).getIdRoot() == 0) {
									%>
									<li><a href="<%=request.getContextPath()%>/CategoryLoad?id=<%=list.get(i).getId()%>"><img
											alt=<%=list.get(i).getName()%>
											src="public/images/danh-muc-san-pham/<%=list.get(i).getIcon()%>"><span
											class="nameDanhMuc"> <%=list.get(i).getName()%>
										</span> <i class="fa fa-chevron-right hidden-md"></i></a>
										<ul>
											<%
												for (int j = 0; j < list.size(); j++) {
															if (list.get(j).getIdRoot() == list.get(i).getId()) {
											%>
											<li><a href=""><span
													class="nameDanhMuc"><%=list.get(j).getName()%></span></a>
												<ul>
													<%
														for (int j2 = 0; j2 < list.size(); j2++) {
																			if (list.get(j2).getIdRoot() == list.get(j).getId()) {
													%>
													<li><a href="<%=request.getContextPath()%>/category.jsp?id=<%=list.get(j2).getId()%>"><span
															class="nameDanhMuc"><%=list.get(j2).getName()%></span></a>
														<div class="clear"></div></li>
													<%
														}
													%>
													<%
														}
													%>
												</ul> <%
 	}
 %>
  <%
 	}
 %>
										</ul> <%
 	}
 %> <%
 	}
 %>
								</ul>
							</ul>
						</div>
					</div>
					<div class="col-xs-12 col-md-8 col-lg-9">
						<div class="row">
							<div class="col-xs-12 col-lg-8" style="padding: 0;">
								<div id="timKiem">
									<form>
									<input type="text" name="t" value="" id="searchSgg" onkeyup="lookKeyWord()" class="searchfield"  autocomplete="off" placeholder="Tìm kiếm sản phẩm ...">
										<div class="clear"></div>
										<div class="autoSuggestionsList_l" id="autoSuggestionsList">
                                                </div>
									</form>
								</div>
								<div id="banner" class="hidden-xs hidden-sm"
									style="height: 401px;">
									<div>
										<ul>
											<li class="flex-active-slide"
												style="width: 100%; float: left; margin-right: -100%; opacity: 1; display: block; z-index: 2;">
												<a href="#"> <img title="công ty lắp đặt camera uy tín"
													src="public/images/slider/chung-nhan-dai-ly-camera-hikvision.jpg" style="margin-top: -10px;">
													<div class="clear"></div>
											</a>
											</li>
										</ul>
										<div class="clear"></div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 hidden-xs hidden-sm hidden-md"
								style="padding-left: 0;">
								<button type="button" class="btn btn-danger button-support"
									data-toggle="modal" data-target="#hotro">
									<img src="./public/images/ui_images/yahoo-smile.png">&nbsp;Hỗ
									trợ trực tuyến
								</button>
								<div class="modal fade" id="hotro" role="dialog"
									style="display: none">
									<div class="modal-dialog modal-md">
										<div class="modal-content">
											<div class="modal-header">
												<h2>Hỗ trợ trực tuyến</h2>
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
								<a class="b_a" href="#"><img title="Lắp camera"
									src="public/images/slider/lap-mang-fpt.jpg"></a> <a
									class="b_a" href="#"><img
									title="Lắp đặt camera tặng báo trộm"
									src="public/images/slider/doi_camera_cu_lay_moi.jpg"></a>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div class="clear"></div>
					<div class="col-xs-12">
						<%
						ArrayList<Nav_tab> nav = navTab.getNav_tab();
						for(int k = 0; k < nav.size(); k++){
							%>
						<ul class="nav nav-tabs custom-tabs " role="tablist">
							<li role="presentation" class="active"><a href=""><%=nav.get(k).getName()%></a></li>
							<%
							
							
								for (int i = 0; i < list.size(); i++) {
												if (list.get(i).getIdRoot() == nav.get(k).getId()) {
							%>
							<li class="hidden-xs hidden-sm" role="presentation"><a
								href=""><%=list.get(i).getName()%></a></li>

							<%

											}}
							%>
						</ul>


						<div class="tab-content ">
							<div role="tabpanel" class="tab-pane active">
								<div class="row">
									<div class="col-xs-12 col-lg-9">
										<div class="row">

											<%
							int qr =nav.get(k).getId_slide();
											ArrayList<Product> listProductsTab = navTab.getNav_ProDuct(qr);
												for (int j2 =0 ; j2 < listProductsTab.size();j2++){
											%>


											<div class="col-xs-6 col-sm-4 col-lg-3 ">
												<div class="thumbnail products" style="height: 233px;">
													<a href="#"><img alt="<%=listProductsTab.get(j2).getName()%>"
														src="public/images/san-pham/<%=listProductsTab.get(j2).getImage()%>"></a>
													<div class="caption">
														<a href="<%=request.getContextPath()%>/Product.jsp?id=<%=listProductsTab.get(j2).getId()%>">
															<h3><%=listProductsTab.get(j2).getName()%></h3>
														</a>
														<div class="clear"></div>
														<span class="price"><%=listProductsTab.get(j2).getPrice()%>VNĐ</span>
													</div>
												</div>
											</div>
											<%
												}	%>
										</div>
									</div>
								   <div class="col-md-3 hidden-xs hidden-sm hidden-md">
                                        <a class="b_a2" href="#"><img alt="lap-camera-giam-sat-khong-day-wifi" src="./public/images/quangcao/<%=nav.get(k).getImg()%>"></a>
                                    </div>
								</div>
							</div>
						</div>
						<%} %>

															
										

					</div>
					<!-- footer-->
					<!-- <div data-include="footer"> -->
					<div id="bottom">
						<div class="container">
							<div class="row">
								<div class="col-xs-12">
									<div class="row">
										<div class="col-xs-12 col-md-4 col-lg-3">
											<div class="tabBottom">
												<div class="tenTabBottom">Cam kết</div>
												<div class="claim">Sản phẩm hàng hóa chính hãng, đa
													dạng, phong phú</div>
												<div class="claim">Luôn luôn giá rẻ và khuyến mại
													không ngừng</div>
												<div class="claim">Dịch vụ chăm sóc khách hàng uy tín,
													tận tâm</div>
											</div>
										</div>
										<div class="col-xs-12 col-md-4 col-lg-3">
											<div class="tabBottom2">
												<div class="tenTabBottom">Hỗ trợ khách hàng</div>
												<ul>
													<li><a href="./xemcameradt.html">Xem camera giám
															sát qua điện thoại</a></li>
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
											<a href="https://www.facebook.com/groups/291188018163318/">
												<img title="LẮP ĐẶT CAMERA QUAN SÁT GIÁ RẺ"
												alt="Camera MLC Việt Nam tự hào Nhà cung cấp thiết bị camera giám sát giá rẻ uy tín trên toàn quốc"
												style="border-radius: 30px;"
												src="./public/images/ui_images/logo.jpg">
											</a>
										</div>
									</div>
									<div class="col-xs-12 col-md-5">
										<div class="diaChiText">
											<p>
												<span style="color: #ff6600;"><strong>LẮP
														ĐẶT CAMERA TẠI TP.HCM</strong></span><br> Địa chỉ : <span
													style="color: #FFD700;">KTX B ĐH Nông Lâm </span><br>
												Điện thoại : <span style="color: #FFD700;">0328826810
													- 0989910161</span><br> Website : <span
													style="color: #FFD700;">http://mlc.vn</span>
											</p>
											<p>
												<span style="color: #FF8C00;">Giới thiệu dịch vụ </span><span
													style="color: #FF8C00;">lắp đặt camera</span><span
													style="color: #FF8C00;"> của MLC TP.HCM</span>
											</p>
											<p>
												<em>Trước nhu cầu của thị trường và mở rộng ngành dịch
													vụ Công ty MLC TP.HCM được sáng lập hoạt động triển khai
													lắp đặt Internet Cáp quang – Camera giám sát
													tại&nbsp;TP.HCM. "Hiện chúng tôi đang phát triển kết hợp
													với một số <strong>đơn vị lắp đặt camera uy tín</strong>
													tạo nên một thị trường dịch vụ công nghệ uy tín trên toàn
													quốc".
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
												<span
													style="font-size: 14px; line-height: 22.3999996185303px;">Địa
													chỉ : <span style="color: #FFD700;">Linh Trung, Thủ
														Đức, TP.HCM</span>
												</span><br> Điện thoại: <span style="color: #FFD700;">0328826810</span>
											</p>
											<p>&nbsp;</p>
											<p>
												<span style="color: #FF8C00;">Hiện chúng tôi có các
													điểm dịch vụ như: </span>
											</p>
											<p>
												<span style="color: #cccccc;">Thủ Đức, Bình Thạnh,
													Quận 1, Quận 4, Quận 5 và các vùng lân cận </span>
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
				</div>
				<!-- end footer -->
				<script>
					$(function() {
						var includes = $('[data-include]');
						jQuery.each(includes, function() {
							var file = 'public/layout/'
									+ $(this).data('include') + '.html';
							$(this).load(file);
						});
					});
				</script>
				 
		
</body>

</html>