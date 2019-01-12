<%@page import="util.Utils"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="./public/js/bootstrap.min.js"></script>

</head>

<script> function lookKeyWord(key) {
			var keyword = document.getElementById("nutTimKiem").value;
			if (keyword.length == 0) {
				$('#autoSuggestionsList').fadeOut(200);
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
							var strhtml = '';
							strhtml += '<div class="sgg-outer">';
							for (var i = 0; i < obj.length && i < 6; i++) {
								if (obj[i] != null) {
									strhtml += '<div class="sgg-row" href="'+root + obj[i].id + '">';
									strhtml += '<div class="sgg-image"><img width="50" height="50" src="public/images/san-pham/' + obj[i].image + '"/></div>';
									strhtml += '<div class="sgg-right">';
									strhtml += '<div class="sgg-title"><a href="'+root + obj[i].id + '">'
											+ obj[i].name + '</a></div>';
									strhtml += '<div class="sgg-sellprice">'
											+ parseFloat(obj[i].price)
													.toFixed()
													.replace(
															/./g,
															function(c, i, a) {
																return i
																		&& c !== "."
																		&& ((a.length - i) % 3 === 0) ? '.'
																		+ c
																		: c;
															}) + ' đ</div>';
									strhtml += '</div>';
									strhtml += '</div>';
								} else {
									strhtml += '<div class="sgg-row">';
									strhtml += '<div class="sgg-title"><a>Không có sản phẩm nào tương ứng</a></div>';
									strhtml += '</div>';
									strhtml += '</div>';
									break;
								}

							}
							$('#autoSuggestionsList').fadeIn(400);
							strhtml += '</div>';
							$('#autoSuggestionsList').html(strhtml);

						}

					})

		}
	}
</script>
<body lang="vi">

	<%
		GetDataCategory dataCategory = new GetDataCategory();
		NavTab navTab = new NavTab();
	%>
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
									<li><a
										href="<%=request.getContextPath()%>/category.jsp?id=<%=list.get(i).getId()%>"><img
											alt=<%=list.get(i).getName()%>
											src="public/images/danh-muc-san-pham/<%=list.get(i).getIcon()%>"><span
											class="nameDanhMuc"> <%=list.get(i).getName()%>
										</span> <i class="fa fa-chevron-right hidden-md"></i></a>
										<ul>
											<%
												for (int j = 0; j < list.size(); j++) {
															if (list.get(j).getIdRoot() == list.get(i).getId()) {
											%>
											<li><a
												href="<%=request.getContextPath()%>/category.jsp?id=<%=list.get(j).getId()%>"><span
													class="nameDanhMuc"><%=list.get(j).getName()%></span></a>
												<ul>
													<%
														for (int j2 = 0; j2 < list.size(); j2++) {
																			if (list.get(j2).getIdRoot() == list.get(j).getId()) {
													%>
													<li><a
														href="<%=request.getContextPath()%>/category.jsp?id=<%=list.get(j2).getId()%>"><span
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
 %> <%
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
										<input type="text" name="keyword" value="" id="nutTimKiem"
											class="inputTimKiem" onkeyup="lookKeyWord()"
											class="searchfield" autocomplete="off"
											placeholder="Tìm kiếm sản phẩm ...">
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
													src="public/images/slider/chung-nhan-dai-ly-camera-hikvision.jpg"
													style="margin-top: -10px;">
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
							for (int k = 0; k < nav.size(); k++) {
						%>
						<ul class="nav nav-tabs custom-tabs " role="tablist">
							<li role="presentation" class="active">
							<a href="<%=request.getContextPath()%>/category.jsp?id=<%=nav.get(k).getId()%>"> <%=nav.get(k).getName()%></a>
							</li>
							<%
								for (int i = 0; i < list.size(); i++) {
										if (list.get(i).getIdRoot() == nav.get(k).getId()) {
							%>
							<li class="hidden-xs hidden-sm" role="presentation"><a
								href="<%=request.getContextPath()%>/category.jsp?id=<%=list.get(i).getId()%>"><%=list.get(i).getName()%></a></li>

							<%
								}
									}
							%>
						</ul>


						<div class="tab-content ">
							<div role="tabpanel" class="tab-pane active">
								<div class="row">
									<div class="col-xs-12 col-lg-9">
										<div class="row">

											<%
												int qr = nav.get(k).getId_slide();
													ArrayList<Product> listProductsTab = navTab.getNav_ProDuct(qr);
													for (int j2 = 0; j2 < listProductsTab.size(); j2++) {
											%>


											<div class="col-xs-6 col-sm-4 col-lg-3 ">
												<div class="thumbnail products" style="height: 233px;">
													<a href="<%=request.getContextPath()%>/Product.jsp?id=<%=listProductsTab.get(j2).getId()%>"><img
														alt="<%=listProductsTab.get(j2).getName()%>"
														src="public/images/san-pham/<%=listProductsTab.get(j2).getImage()%>"></a>
													<div class="caption">
														<a
															href="<%=request.getContextPath()%>/Product.jsp?id=<%=listProductsTab.get(j2).getId()%>">
															<h3><%=listProductsTab.get(j2).getName()%></h3>
														</a>
														<div class="clear"></div>
														<span class="price" style="text-align: center;"><%=Utils.format(listProductsTab.get(j2).getPrice())%>  VNĐ</span>
													</div>
												</div>
											</div>
											<%
												}
											%>
										</div>
									</div>
									<div class="col-md-3 hidden-xs hidden-sm hidden-md">
										<a class="b_a2" href="#"><img
											alt="lap-camera-giam-sat-khong-day-wifi"
											src="./public/images/quangcao/<%=nav.get(k).getImg()%>"></a>
									</div>
								</div>
							</div>
						</div>
						<%
							}
						%>




					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer-->
	<!-- <div data-include="footer"> -->
	<jsp:include page="public/layout/Footer.jsp"></jsp:include>
	<!-- end footer -->
	<script>
		$(function() {
			var includes = $('[data-include]');
			jQuery.each(includes,
					function() {
						var file = 'public/layout/' + $(this).data('include')
								+ '.html';
						$(this).load(file);
					});
		});
	</script>


</body>

</html>