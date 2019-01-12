<%@page import="model.User"%>
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
   if( session.getAttribute("user") == null ||session.getAttribute("cart") == null){
	   response.sendRedirect("cart.jsp");
   }else{
   User user =  (User) session.getAttribute("user");
   %> 
 <jsp:include page="public/layout/header1.jsp"></jsp:include>
   <jsp:include page="public/layout/headerPage.jsp"></jsp:include>          
                            <div class="clear"></div>
                
      <div class="clear"></div>
      <!-- Top end here -->
      <div class="container">
         <div class="row">
            <div class="col-xs-12">
               <div class="header">
                  <span>Kiểm tra thông tin nhận hàng</span>
               </div>
               <form action="">
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
                              <input class="form-control" type="text" id="ship_address" placeholder= "<%=user.getAddress()%>"></span>
                           </div>
                        </td>
                        <td style="vertical-align:top">
                           <span class="circle">3</span>
                           <span style="font-weight:bold;color:#555;">Xác nhận đơn hàng</span>
                           <form>
                           <table id="cartthanhtoan" class="inside">
                              <tbody>
                                 <tr>
                                    <td colspan="2" class="text_center">Sản phẩm</td>
                                    <td class="text_right">Giá</td>
                                 </tr>
                                  <%TreeMap<Integer,Integer> map =  (TreeMap<Integer, Integer>) session.getAttribute("cart");
									if (map == null) map = new TreeMap<Integer, Integer>();%>
									 <%Set<Entry<Integer, Integer>> setTreeMap = map.entrySet();
                            		if(setTreeMap.size()!=0){
                            			double total =0;
                    	   			 for (Entry<Integer, Integer> entry : setTreeMap) { 
                    	   				 Product product = GetDataProduct.getProDuctById(entry.getKey());
                    	    			int quality = entry.getValue();
                    	    			double price = product.getPrice() * quality;
                    	    			total += price;
                    	    %>
                                 <tr>
                                    <td class="text_center">
                                       <img class="cartthanhtoan_img" style="width: 60px;height: 60px" src="public/images/san-pham/<%=product.getImage() %>"
                                          alt="Hình sản phẩm">
                                    </td>
                                    <td><%=product.getName() %></td>
                                    <td class="text_right">
                                       <span style="display:block;color:red;font-weight:bold;margin: 0 0 5px 0;"><%=Utils.format(price)%>
                                       VNĐ</span>
                                       <span>Số lượng: <%=quality %></span>
                                    </td>
                                 </tr>
                                      <%}%>
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
                                       <%=Utils.format(total) %> VNĐ</span>
                                    </td>
                                 </tr>
                                 <%} %>
                            
                              </tbody>
                           </table>
                     <tr class="no-border">
                        <td colspan="2">
                           <input class="btn btn-warning" type="button" value="Trở về giỏ hàng">
                           <input class="btn btn-danger" type="button" onclick="oder()" value="Mua hàng" style="float:right">
                        </td>
                     </tr>
                  </tbody>
               </table>
                </form>
               <%} %>
            </div>
         </div>
         <div class="clear"></div>
      </div>
     <jsp:include page="public/layout/Footer.jsp"></jsp:include>
   </body>
   <script type="text/javascript"> function oder() {
	   var address = $("#ship_address").val();
	   var keysaleof = $("#key_sales_off").val();
	  $.ajax({
		  dataType : "text",
		  type : "post",
		  data : {
			  address : address,
			  keysaleof : keysaleof	
			  },
			  url: "<%=request.getContextPath()%>/Order",
			  success: function() {
				  alert ("OKe")
				
			}
	  })
	   
	   
	
}
   </script>
</html>