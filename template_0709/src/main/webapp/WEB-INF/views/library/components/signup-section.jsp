<!-- Start: SignUp Section -->
<div id="content" class="site-content">
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="signin-main">
				<div class="container">
					<div class="woocommerce">
						<div class="woocommerce-login">
							<div class="company-info signin-register">
								<div class="col-md-8 col-md-offset-2 border-dark new-user">
									<div class="row">
										<div class="col-md-12">
											<div class="company-detail new-account bg-light margin-right">
												<div class="new-user-head">
													<h2>Create New Account</h2>
													<span class="underline left"></span><br>
													<!-- <p>If no barcode has been assigned for your account,
														please contact the library.</p> -->
												</div>
												<form class="signup" action="insertUser" method="post">
													<p class="form-row form-row-first input-required">
														<label> <span class="first-letter">Email</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="email" name="email"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">Password</span>
															<span class="second-letter">*</span>
														</label> <input type="password" id="passwd" name="passwd"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">Repeat Password</span>
															<span class="second-letter">*</span>
														</label> <input type="password" id="passwdre" name="passwdre"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">Name</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="name" name="name"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">Birth</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="birth" name="birth"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">Phone Number</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="phone" name="phone"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">Address</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="address" name="address"
															class="input-text">
													</p>
													<!-- <p>
														<select name="authority">
															<option value="ROLE_USER">ROLE_USER</option>
															<option value="ROLE_ADMIN">ROLE_ADMIN</option>
														</select>
													</p> -->
													<input type="hidden" name="authority" value="ROLE_USER">
													<div class="clear"></div>
													<input type="submit" value="Signup" name="signup" id="signup"
														class="button btn btn-default">
													<div class="clear"></div>
												</form>
												<script>
											$(document).ready(function(){
												$('#signup').click(function(){
													if($('#email').val()==""){
														alert("Please insert E-mail.");
														$('#email').focus();
														return false;
														}
													else if($('#passwd').val()==""){
														alert("Please insert password.");
														$('#passwd').focus();
														return false;
														}
													else if($('#passwdre').val()=="" || $('#passwdre').val()!=$('#passwd').val()){
														alert("password and repeated password do not accord. try again!");
														$('#passwdre').focus();
														return false;
														}
													else if($('#phone').val()==""){
														alert("Please insert Your phone number.");
														$('#phone').focus();
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
														$('#send').submit();
														}
													});
												});
											</script>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>
<!-- End: SignUp Section -->
