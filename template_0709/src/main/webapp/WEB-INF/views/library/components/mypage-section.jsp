<script>
    function passwordReset(){
        var formData = $("#passwordReset").serialize();

        $.ajax({
            cache : false,
            url : "${pageContext.request.contextPath}/user/passwordReset", // 요기에
            type : 'POST', 
            data : formData, 
            success : function() {
                alert("success");
            }, // success 
    
            error : function() {
            	alert("error");
            }
        }); // $.ajax */
    }
    function udpateInform(){
        var formData = $("#udpateInform").serialize();

        $.ajax({
            cache : false,
            url : "${pageContext.request.contextPath}/user/udpateInform", // 요기에
            type : 'POST', 
            data : formData, 
            success : function() {
                alert("success");
            }, // success 
    
            error : function() {
            	alert("error");
            }
        }); // $.ajax */
    }
</script>
<!-- Start: Mypage Section -->
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
													<h2>MyPage</h2>
													<span class="underline left"></span>
													<p>If no barcode has been assigned for your account,
														please contact the library.</p>
												</div>

												<p class="form-row form-row-first input-required">
													<label> <span>${sessionScope.email}</span>
													</label> <br>
												</p>
												<form id="passwordReset" class="passwordReset" method="post">
													<p class="form-row input-required">
														<label> <span class="first-letter">Password</span>
															<span class="second-letter">*</span>
														</label> <input type="password" id="passwd" name="passwd"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">Password
																Repeat</span> <span class="second-letter">*</span>
														</label> <input type="password" id="passwdre" name="passwdre"
															class="input-text">
													</p>
													<div class="clear"></div>
													<input type="submit" value="Password reset" name="Password reset"
														class="button btn btn-default" onclick="passwordReset();">
													<div class="clear"></div>
												</form>
												<br>
												<form id="udpateInform" class="udpateInform" method="post">
													<p class="form-row input-required">
														<label> <span class="first-letter">NAME : ${ user.NAME }</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="name" name="name"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">BIRTH : ${ user.BIRTH }</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="birth" name="birth"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">PHONE : ${ user.PHONE }</span> <span
															class="second-letter">*</span>
														</label> <input type="text" id="phone" name="phone"
															class="input-text">
													</p>
													<p class="form-row input-required">
														<label> <span class="first-letter">ADDRESS : ${ user.ADDRESS }</span>
															<span class="second-letter">*</span>
														</label> <input type="text" id="address" name="address"
															class="input-text">
													</p>
													<div class="clear"></div>
													<input type="submit" value="Inform reset" name="Inform reset"
														class="button btn btn-default" onclick="udpateInform();">
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
<!-- End: Mypage Section -->