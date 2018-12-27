<div id="top">
		<div id="topRed" class="hidden-sm hidden-xs">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="row">
							<div class="col-xs-12">
								<div class="topDangNhap" style="float: right;">
									<div class="textWhite">
										<a class="fa fa-user aDangNhap" href="#" data-toggle="modal"
											data-target="#formlogin"> Đăng nhập</a>
									</div>
								</div>
								<div class="topDangNhap" style="float: right;">
									<div class="textWhite">
										<a class="gioHang" href="cart.html">Giỏ hàng (<b>0</b> sản
											phẩm)
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row topLogo">
				<div class="col-xs-12">
					<div class="row">
						<div class="col-xs-12 col-md-3">
							<div id="logo">
								<a href="index.html"> <img
									title="LẮP ĐẶT CAMERA QUAN SÁT GIÁ RẺ"
									src="public/images/ui_images/logo.jpg">
								</a>
							</div>
						</div>
						<div class="col-xs-12 col-md-6">
							<img style="width: 100%; margin-top: 25px;"
								src="public/images/ui_images/promise.png">
						</div>
						<div class="col-xs-12 col-md-3">
							<div class="hotline">
								<div class="name">Tư vấn lắp đặt camera</div>
								<div class="clear"></div>
								<div class="phone">
									<a href="tel:0328826810">0328826810</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Menu -->
		<div class="clear"></div>
		<div class="modal fade" id="formlogin" role="dialog"
			style="display: none;">
			<div class="modal-dialog modal-md">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span class="fa fa-remove"></span>
						</button>
						<ul class="nav nav-tabs ">
							<li class="active"><a id="tabLogin" data-toggle="tab"
								href="#login-form"> Đăng nhập <span class="fa fa-user"></span></a>
							</li>
							<li><a id="tabRegister" data-toggle="tab"
								href="#registration-form"> Đăng kí <span
									class="fa fa-pencil"></span></a></li>
						</ul>
					</div>
					<div class="modal-body">
						<div class="tab-content">
							<div id="login-form" class="tab-pane fade in active">
								<form id="myFormLogin">
									<div class="form-group">
										<label for="email">Email:</label> <input type="email"
											class="form-control" placeholder="Enter email" name="email">
									</div>
									<div class="form-group">
										<label for="pwd">Mật khẩu:</label> <input type="password"
											class="form-control" placeholder="Enter password"
											name="password">
									</div>
									<div class="form-group">
										<div class="checkbox">
											<label><input type="checkbox" name="remember">
												Ghi nhớ</label> <a data-toggle="tab" href="#forgot-form" for="pwd">Quên
												mật khẩu</a>
										</div>
									</div>
									<button type="submit" id="btnLogin" class="btn btn-default">Đăng
										nhập</button>
								</form>
							</div>
							<div id="forgot-form" class="tab-pane fade in fade">
								<form>
									<div class="form-group">
										<label for="email">Email:</label> <input type="email"
											class="form-control" placeholder="Enter email" name="email">
									</div>
									<button type="submit" class="btn btn-default">Xác nhận</button>
								</form>
							</div>
							<div id="registration-form" class="tab-pane fade">
								<form id="myForm" action="<%=request.getContextPath()%>/Checkregister" method="post">
									<div class="form-group">
									<div class="form-group">
										<label for="tendangnhap">Tên đăng nhập:</label> <input type="text"
											class="form-control" placeholder="Enter account login"
											name="account">
									</div>
									<div class="form-group">
										<label for="password">Mật khẩu:</label> <input type="password"
											class="form-control" placeholder="New password"
											name="password">
									</div>
									<div class="form-group">
										<label for="passwordAgain">Nhập lại Mật khẩu:</label> <input
											type="password" class="form-control"
											placeholder="New password" name="passwordAgain">
									</div>
										<label for="name">Tên bạn:</label> <input type="text"
											class="form-control" placeholder="Enter your name"
											name="name" id="name">
									</div>
									<div class="form-group">
										<label for="ewemail">Email:</label> <input type="email"
											class="form-control" placeholder="Enter new email"
											name="email">
									</div>
									<div class="form-group">
										<label for="numberPhone">Số điện thoại:</label> <input
											type="text" class="form-control" placeholder="Số điện thoại"
											name="numberPhone">
									</div>
									<div class="form-group">
										<label for="ngaysinh">Ngày Sinh:</label> <input type="date"
											class="form-control" value="2018-07-22"
       min="1921-01-01" max="2018-12-14" name ="ngaysinh">
									</div>
									<div class="form-group">
										<label for="address">Địa chỉ:</label> <input type="text"
											class="form-control" placeholder="Địa chỉ" name="address">
									</div>
									<div class="form-group">
										<label for="id_tp">Thành phố:</label> <select
											class="form-control" id="sel1" name="id_tp">
											<option value="1">Hà nội</option>
											<option value="2">TP. Hồ Chí Minh</option>
											<option value="3">Hòa Bình</option>
											<option value="4">Hà Giang</option>
											<option value="5">Lào Cai</option>
											<option value="6">Sơn La</option>
											<option value="7">Điện Biên</option>
											<option value="8">Lạng Sơn</option>
											<option value="9">Cao Bằng</option>
											<option value="10">Tuyên Quang</option>
											<option value="11">Yên Bái</option>
											<option value="12">Ninh Bình</option>
											<option value="13">TP. Hải Phòng</option>
											<option value="14">Quảng Ninh</option>
											<option value="15">Hà Tây</option>
											<option value="16">Thái Bình</option>
											<option value="17">Thanh Hóa</option>
											<option value="18">Nghệ An</option>
											<option value="19">Hà Tĩnh</option>
											<option value="20">Đắc Lắc</option>
											<option value="21">Quảng Bình</option>
											<option value="22">Quảng Trị</option>
											<option value="23">TP. Huế</option>
											<option value="24">Quảng Ngãi</option>
											<option value="25">Bình Định</option>
											<option value="26">Phú Yên</option>
											<option value="27">Khánh Hòa</option>
											<option value="28">Gia Lai</option>
											<option value="29">Đồng Nai</option>
											<option value="30">Bình Thuận</option>
											<option value="31">Lâm Đồng</option>
											<option value="32">Bà Rịa - Vũng Tàu</option>
											<option value="33">Tây Ninh</option>
											<option value="34">Đồng Tháp</option>
											<option value="35">Ninh Thuận</option>
											<option value="36">Vĩnh Long</option>
											<option value="37">TP. Cần Thơ</option>
											<option value="38">Long An</option>
											<option value="39">Tiền Giang</option>
											<option value="40">Trà Vinh</option>
											<option value="41">Bến Tre</option>
											<option value="42">An Giang</option>
											<option value="43">Kiên Giang</option>
											<option value="44">Lai Châu</option>
											<option value="45">Sóc Trăng</option>
											<option value="46">Đắc Nông</option>
											<option value="47">Phú Thọ</option>
											<option value="48">Vĩnh Phúc</option>
											<option value="49">Bắc Giang</option>
											<option value="50">Thái Nguyên</option>
											<option value="51">Bắc Cạn</option>
											<option value="52">Hải Dương</option>
											<option value="53">Hưng Yên</option>
											<option value="54">Nam Định</option>
											<option value="55">Hà Nam</option>
											<option value="56">Quảng Nam</option>
											<option value="57">TP. Đà nẵng</option>
											<option value="58">Bình Dương</option>
											<option value="59">Bình Phước</option>
											<option value="60">Cà Mau</option>
											<option value="61">Bạc Liêu</option>
											<option value="62">Bắc Ninh</option>
										</select>
									</div>
									<button type="submit" id="btnReg" class="btn btn-default">Đăng
										kí</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
