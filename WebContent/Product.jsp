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
   <jsp:include page="public/layout/headerPage.jsp"></jsp:include>
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
		}else{
			response.sendRedirect("index.jsp");
		}
	%>
	
	<jsp:include page="public/layout/Footer.jsp"></jsp:include>
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
                	var obj = JSON.parse (data);
                $("#qualityCart").text(data);
                  
        }
        
    })}
    </script>

</html>