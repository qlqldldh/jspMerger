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
													<span class="underline left"></span>
													<p>If no barcode has been assigned for your account,
														please contact the library.</p>
												</div>
												<form class="signup" action="insertUser" method="post">
													<p class="form-row form-row-first input-required">
														<label> <span class="first-letter">email</span> <span
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
														<label> <span class="first-letter">Password Repeat</span>
															<span class="second-letter">*</span>
														</label> <input type="password" id="passwdre" name="passwdre"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">name</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="name" name="name"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">birth</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="birth" name="birth"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">phone</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="phone" name="phone"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">address</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="address" name="address"
															class="input-text">
													</p>
													<p>
														<select name="authority">
															<option value="ROLE_USER">ROLE_USER</option>
															<option value="ROLE_ADMIN">ROLE_ADMIN</option>
														</select>
													</p>
													<div class="clear"></div>
													<input type="submit" value="Signup" name="signup"
														class="button btn btn-default">
													<div class="clear"></div>
												</form>
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
