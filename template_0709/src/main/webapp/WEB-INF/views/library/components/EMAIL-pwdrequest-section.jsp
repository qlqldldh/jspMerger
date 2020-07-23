<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<script>
    function mailSending(){
        var formData = $("#mailSending").serialize();
        $.ajax({
            cache : false,
            url : "${pageContext.request.contextPath}/user/mailSending", // 요기에
            type : 'POST', 
            data : formData, 
            success : function(data) {
                alert("상태 : "+data);
            }, // success 
            error : function() {
            	alert("error");
            }
        }); // $.ajax */
    }
</script>
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
												
													<h2 style="color:#ff7236;">Don't worry!</h2>
													<h5 style="color:lightgray;">Give us your email, we'll send you a new password!</h5>
													<span class="underline left"></span>
												</div>
												<form id="mailSending" class="mailSending" method="post">
													<p class="form-row form-row-last input-required">
														<label> <span class="first-letter">Make sure this email is the one you used to register!</span> <span
															class="second-letter">*</span>
														</label> <input type="email" id="email" name="email"
															class="input-text">
													</p>
													<div class="clear"></div>
													<div class="password-form-row"></div>
													<input type="submit" value="SEND" name="send"
														class="button btn btn-default" onclick="mailSending(); return false;">
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