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
                    	    <tr id = "<%=product.getId()%>">
                                                <td style="text-align: center;"><a title="Xóa sản phẩm" style="font-size:20px;color:#000;" href="" onclick="deleteProductCart(<%=product.getId()%>)"><i class="fa fa-trash"></i></a></td>
                                                <td><b><%=product.getName() %></b></td>
                                                <td><img class="cart_img" src="public/images/san-pham/<%=product.getImage()%>" style=" width: 100px;display: block;margin: 0 auto;"></td>
												<td style="color:#ff0000;font-weight:bold;"><%=Utils.format(product.getPrice()) %>  VNĐ</td>
                                                <td style="width:92px;color:#ff0000;font-weight:bold;"> <input type="number" name ="quality" value ="<%=quality %>" min = "1" class="form-control text-center" onchange ="thanhtien(<%=product.getPrice() %>,<%=i %>,<%=(product.getPrice() * quality) %> )" style="width: 70%"></td>
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
                                    <input type="submit" value="Thanh Toán" class="btn btn-danger" style="float:right;margin:5px">
                                	<input style="float:right;margin:5px" class="btn btn-warning" type="submit" value="Cập nhật số lượng">
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
   <jsp:include page="public/layout/Footer.jsp"></jsp:include>
   
</body>
<script type="text/javascript">
function thanhtien(price,i,total) {
	var to = document.getElementsByName("total").value - total;
	alert (to);
	var pri = price;
	var quali = document.getElementsByName("quality")[i].value;
	var tien= (pri * quali);
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
<script type="text/javascript"> function deleteProductCart(id1) {
	var idd =  id1;
	$.ajax({
		dataType : "text",
		type: "post",
		data : {id : idd},
		url : "<%=request.getContextPath()%>/DeleteProductCart",
		success: function () {
			$("#id1").remove();
		}
		
	})
	
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