<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title"></h4>
				<ul class="db-breadcrumb-list">
					<!-- <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>orders update</li> -->
					<li><a href=“/book/admin/index”>
						<!-- <i class=“fa fa-home”></i> -->Menu
				</a></li>
				<li>Admin</li>
				<li><a href=“/book/admin/badminMain”>Admin List</a></li>
				<li>Info Update</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>Update Admin's Information</h4>
						</div>
						<div class="widget-inner">
							<form class="edit-profile m-b30" action="badminUpdatedo" method="GET">
								<div class="">
									<div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3> Update Admin's Information </h3>
										</div>
									</div>
	
									<div class="form-group row">
									<label class="col-sm-2 col-form-label">Email</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.email}" name="email" readonly>
									</div>
								</div>
									
									<div class="form-group row">
									<label class="col-sm-2 col-form-label">Name</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.name }" name="name" id="name">
									</div>
								</div>
								<%-- 
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Passwd</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.passwd }" name="passwd" id="passwd">
									</div>
								</div> --%>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Phone</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.phone }" name="phone" id="phone">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Address</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.address }" name="address" id="address">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Birth</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.birth }" name="birth" id="birth">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Department</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.grp }" name="grp" id="grp">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Position</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.pos }" name="pos" id="pos">
									</div>
								</div>
									<div class="seperator"></div>
									
									
								</div>
								<div class="">
									<div class="">
										<div class="row">
											<div class="col-sm-2">
											</div>
											<div class="col-sm-7">
												<input type="submit" class="btn" value="Update" id="update">
												<input type="reset" class="btn-secondry" value="Reset">
												<button type="button" class="btn-secondry m-r5" onclick="location.href='badminMain'">Cancel</button>
												<script>
											$(document).ready(function(){
												$('#update ').click(function(){
													if($('#name').val()==""){
														alert("Name can not be Null");
														$('#name').focus();
														return false;
														}
													else if($('#passwd').val()==""){
														alert("Password can not be Null");
														$('#passwd').focus();
														return false;
														}
													else if($('#phone').val()==""){
														alert("Phone Number can not be Null");
														$('#phone').focus();
														return false;
														}
													else if($('#name').val()==""){
														alert("Name can not be Null");
														$('#name').focus();
														return false;
														}
													else if($('#grp').val()==""){
														alert("Department can not be Null");
														$('#grp').focus();
														return false;
														}
													else if($('#pos').val()==""){
														alert("Position can not be Null");
														$('#pos').focus();
														return false;
														}
													else{
														if($('#phone').val()!=""){
															var regnum = /^[0-9]*$/;
															var phoneVal = $('#phone').val();
															if(!regnum.test(phoneVal)){
																alert("Please insert ONLY NUMBERS.");
																$('#phone').focus();
																return false;
															}
														}
														$('#insert').submit();
														}
													});
												});
											</script>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- Your Profile Views Chart END-->
			</div>
		</div>
	</main>
	<div class="ttr-overlay"></div>