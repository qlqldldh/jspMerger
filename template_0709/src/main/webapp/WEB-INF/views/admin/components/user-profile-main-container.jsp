<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<script>
    /* function passwordReset(){
        var formData = $("#passwordReset").serialize();

        $.ajax({
            cache : false,
            url : "${pageContext.request.contextPath}/user/passwordReset2", // 요기에
            dataType : "POST",
            data : formData, 
            success : function(data) {
                alert(data);
            }, // success 
    
            error : function() {
            	alert("error");
            }
        }); // $.ajax */
//    }
    function udpateInform(){
        var formData = $("#udpateInform").serialize();

        $.ajax({
            cache : false,
            url : "${pageContext.request.contextPath}/user/udpateInform", // 요기에
            type : "POST", 
            data : formData, 
            success : function(data) {
                alert(data);
                window.location.reload(true);
            }, // success 
    
            error : function() {
            	alert("error");
            }
        }); // $.ajax */
    }
    function passwordReset(){
        var formData = $("#passwordReset").serialize();

        $.ajax({
            cache : false,
            url : "${pageContext.request.contextPath}/user/passwordReset", // 요기에
            type : "POST", 
            data : formData, 
            success : function(data) {
                alert(data);
                window.location.reload(true);
            }, // success 
    
            error : function() {
            	alert("error");
            }
        }); // $.ajax */
    }
</script>
<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">User Profile</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>User Profile</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>User Profile</h4>
						</div>
						<div class="widget-inner">
							<form id="passwordReset" class="edit-profile m-b30">
								<div class="">
									<div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3>Personal Email</h3>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label"></label>
										<div class="col-sm-7">
											<span>${sessionScope.email}</span>
										</div>
									</div>

									<div class="m-form__seperator m-form__seperator--dashed m-form__seperator--space-2x"></div>

									<div class="form-group row">
										<div class="col-sm-10 ml-auto">
											<h3 class="m-form__section">Password Reset</h3>
										</div>
									</div>
								
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Password</label>
										<div class="col-sm-7">
											<input id="passwd" name="passwd" class="form-control" type="password">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Password Repeat</label>
										<div class="col-sm-7">
											<input id="passwdre" name="passwdre" class="form-control" type="password">
										</div>
									</div>
								</div>
								<div class="">
									<div class="">
										<div class="row">
											<div class="col-sm-2">
											</div>
											<div class="col-sm-7">
												<button type="reset" class="btn" onclick="passwordReset(); return false;">Save changes</button>
											</div>
										</div>
									</div>
								</div>
							</form>
							<form id="udpateInform" class="edit-profile">
								<div class="">
									<div class="form-group row">
										<div class="col-sm-10 ml-auto">
											<h3>Profile</h3>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Name</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" id="name" name="name" placeholder="${ user.NAME }">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">BIRTH</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" id="birth" name="birth" placeholder="${ user.BIRTH }">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Phone</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" id="phone" name="phone" placeholder="${ user.PHONE }">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Address</label>
										<div class="col-sm-7">
											<input class="form-control"type="text" id="address" name="address" placeholder="${ user.ADDRESS }">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-2">
									</div>
									<div class="col-sm-7">
										<button type="reset" class="btn" onclick="udpateInform(); return false;">Save changes</button>
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