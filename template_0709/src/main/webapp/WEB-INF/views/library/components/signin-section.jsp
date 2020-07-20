<!-- Start: Cart Section -->
<div id="content" class="site-content">
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="signin-main">
				<div class="container">
					<div class="woocommerce">
						<div class="woocommerce-login">
							<div class="company-info signin-register">
								<div class="col-md-8 col-md-offset-3 border-dark-left">
									<div class="row">
										<div class="col-md-12">
											<div class="company-detail bg-dark margin-left">
												<div class="signin-head">
													<h2>Sign in</h2>
													<span class="underline left"></span>
												</div>
												<form class="login" action="login_check" method="post">
													<p class="form-row form-row-first input-required">
														<label> <span class="first-letter">Barcode
																or Username</span> <span class="second-letter">*</span>
														</label> <input type="text" id="email" name="email"
															class="input-text">
													</p>
													<p class="form-row form-row-last input-required">
														<label> <span class="first-letter">Pin</span> <span
															class="second-letter">*</span>
														</label> <input type="password" id="passwd" name="passwd"
															class="input-text">
													</p>
													<div class="clear"></div>
													<div class="password-form-row">
														<span style="color:red;">${errMsg}</span>
														<p class="lost_password">
															<a href="email">Lost your Pin?</a>
														</p>
													</div>
													<br/>
													<input type="submit" value="Login" name="login"
														class="button btn btn-default">&nbsp;
														<a class="btn btn-dark-gray" href="join">Register</a>
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
<!-- End: Cart Section -->