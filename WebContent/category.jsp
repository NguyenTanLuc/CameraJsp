<%@page import="model.Catelogy"%>
<%@page import="dao.GetDataCategory"%>
<%@page import="org.apache.commons.lang3.StringEscapeUtils"%>
<%@page import="model.Product"%>
<%@page import="dao.GetDataProduct"%>
<%@page import="java.sql.ResultSet"%>
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

 	<jsp:include page="public/layout/header1.jsp"></jsp:include>
   <jsp:include page="public/layout/headerPage.jsp"></jsp:include>      
      <div class="clear"></div>
      <!-- Top end here -->
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
                     <% int id = Integer.parseInt(request.getParameter("id"));
                     ResultSet set = GetDataProduct.getDataByIdCatogory(id);
                     Catelogy set2 = GetDataCategory.getCategoryById(id);
                     set.next();%>
                        <h1><%=set2.getName()%></h1>
                        <div class="clear"></div>
                     </div>
                     <div class="clear"></div>
                     <div class="product_list">
                        <div class="row">
                        <%set.beforeFirst();
                        while (set.next()){
                       	Product product = new Product.Builder()
						.setId(set.getInt("id"))
						.setIdCategory(set.getInt("id_category"))
						.setName(set.getString("name"))
						.setPrice(set.getInt("price"))
						.setStatus(set.getInt("status"))
						.setQuatity(set.getInt("quatity"))
						.setImage( set.getString("img"))
						.setDetai(StringEscapeUtils.unescapeHtml4(set.getString("detail_product")))
						.setThongSo(StringEscapeUtils.unescapeHtml4(set.getString("digital")))
						.build();%>
                           <div class="col-xs-6 col-sm-4 col-lg-3">
                              <div class="thumbnail products" style="height: 217px;">
                                    <a href="<%=request.getContextPath()%>/Product.jsp?id=<%=product.getId()%>">
                                 <img alt="Hình Sản phâm" src="./public/images/san-pham/<%=product.getImage()%>">
                                 </a>
                                 <div class="caption">
                                    <a href="<%=request.getContextPath()%>/Product.jsp?id=<%=product.getId()%>">
                                       <h3><%=product.getName() %></h3>
                                    </a>
                                    <div class="clear"></div>
                                    <span class="price"><%=product.getPrice() %> VNĐ</span>
                                 </div>
                              </div>
                           </div>
                           <%} %>
                     </div>
                     </div>
                     <div class="clear"></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
    <jsp:include page="public/layout/Footer.jsp"></jsp:include>
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