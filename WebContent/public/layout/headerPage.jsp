<%@page import="model.Catelogy"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.NavTab"%>
<%@page import="model.Nav_tab"%>
<%@page import="dao.GetDataCategory"%>
<%@page import="java.util.TreeMap"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	GetDataCategory dataCategory = new GetDataCategory();
	NavTab navTab = new NavTab();
%>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="row">
				<div class="col-md-3 col-lg-3 hidden-xs hidden-sm"
					style="padding-right: 0;">
					<div id="listDanhMuc">
						<div class="dauDanhMuc">
							<span>Danh mục sản phẩm<i
								class="fa fa-chevron-circle-down"></i></span>
						</div>
						<ul class="noiDungDanhMuc" style="height: 401px; width: 100%">
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
				<div class="col-xs-12 col-md-9 col-lg-9">
					<div class="row">
						<div class="col-xs-12 col-lg-8" style="padding: 0;">
							<div id="timKiem">
									<form>
									<input type="text" name="keyword" value="" id ="nutTimKiem" class="inputTimKiem" onkeyup="lookKeyWord()" class="searchfield"  autocomplete="off" placeholder="Tìm kiếm sản phẩm ...">
										<div class="clear"></div>
										<div class="autoSuggestionsList_l" id="autoSuggestionsList">
                                                </div>
									</form>
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
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</div>