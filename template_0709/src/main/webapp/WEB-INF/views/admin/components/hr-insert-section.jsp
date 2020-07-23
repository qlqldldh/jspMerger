<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title"> + Add Employee</h4>
			<ul class="db-breadcrumb-list">
					<li><a href="#"></i>Menu</a></li>
					<li>Human Resources</li>
					<li>+ Add Employee</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>Insert Employee's Information</h4>
					</div>
					<div class="widget-inner">
						<form class="edit-profile m-b30" action="hrInsertdo" method="post">
							<div class="">
								<!-- <div class="form-group row">
									<div class="col-sm-10  ml-auto">
										<h3>Personal Details</h3>
									</div>
								</div> -->
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Full Name</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Name" name="name" id="name">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Tel</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Telephone" name="tel" id="tel">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Pay</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Pay" name="pay" id="pay">
										<!-- <span class="help">If you want your invoices addressed
											to a company. Leave blank to use your full name.</span> -->
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Position</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											placeholder="Position" name="position" id="position">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Department</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											placeholder="Department" name="dname" id="dname">
									</div>
								</div>
								
								<div class="seperator"></div>

							</div>
							<div class="">
								<div class="">
									<div class="row">
										<div class="col-sm-2"></div>
										<div class="col-sm-7">
											<input type="submit" class="btn" value="Add" id="insert">
											<input type="reset" class="btn-secondry" value="Cancel">
											<script>
											$(document).ready(function(){
												$('#insert').click(function(){
													if($('#name').val()==""){
														alert("Please insert Full name.");
														$('#name').focus();
														return false;
														}
													else if($('#tel').val()==""){
														alert("Please insert Telephone Number.");
														$('#tel').focus();
														return false;
														}
													else if($('#pay').val()==""){
														alert("No Pay, No Work.");
														$('#pay').focus();
														return false;
														}
													else if($('#position').val()==""){
														alert("Please insert Position");
														$('#phone').focus();
														return false;
														}
													else if($('#dname').val()==""){
														alert("Please insert Department");
														$('#dname').focus();
														return false;
														}
													else{
														if($('#tel').val()!=""){
															var regnum = /^[0-9]*$/;
															var phoneVal = $('#tel').val();
															if(!regnum.test(phoneVal)){
																alert("Please insert ONLY NUMBERS.");
																$('#tel').focus();
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
