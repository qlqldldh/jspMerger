<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">Badmin-insert</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
				<li>Badmin-insert</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>Badmin-insert</h4>
					</div>
					<div class="widget-inner">
						<form class="edit-profile m-b30" action="badminInsertdo" method="GET">
							<div class="">
								<div class="form-group row">
									<div class="col-sm-10  ml-auto">
										<h3>Badmin-insert</h3>
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Email</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Email" name="email" id="email">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Name</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Name" name="name" id="name">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Passwd</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Passwd" name="passwd" id="passwd">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Phone</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Phone" name="phone" id="phone">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Address</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Address" name="address" id="address">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Birth</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Birth" name="birth" id="birth">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Department</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Department" name="grp" id="grp">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Position</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Position" name="pos" id="pos">
									</div>
								</div>
																									
								<div class="seperator"></div>

								
							</div>
							<div class="">
								<div class="">
									<div class="row">
										<div class="col-sm-2"></div>
										<div class="col-sm-7">
											<input type="submit" class="btn" value="Insert" id="insert">
											<input type="reset" class="btn-secondry" value="Cancel">
											<script>
											$(document).ready(function(){
												$('#insert').click(function(){
													if($('#email').val()==""){
														alert("Please insert E-mail");
														$('#email').focus();
														return false;
														}
													else if($('#name').val()==""){
														alert("Please insert Your Name");
														$('#name').focus();
														return false;
														}
													else if($('#passwd').val()==""){
														alert("Please insert Password");
														$('#passwd').focus();
														return false;
														}
													else if($('#phone').val()==""){
														alert("Please insert phone");
														$('#department').focus();
														return false;
														}
													else if($('#department').val()==""){
														alert("Please insert Department");
														$('#department').focus();
														return false;
														}
													else if($('#pos').val()==""){
														alert("Please insert Position.");
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