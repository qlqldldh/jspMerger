<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script>
	function confirm_delete() {
		var x = confirm("Are you sure you want to delete?");
		var dd = document.getElementById("del").value;
		if (x)
			location.href='badminDelete?email='+dd;
		else
			return false;
	}
</script>
<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title"></h4>
			<ul class="db-breadcrumb-list">
				<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
				<li>orders update</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>orders update</h4>
					</div>
					<div class="widget-inner">
						<div class="">
							<div class="form-group row">
								<div class="col-sm-10  ml-auto">
									<h3>orders-update</h3>
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Email</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.email}"
										name="email" readonly="readonly">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Name</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.name }"
										name="name" readonly="readonly">
								</div>
							</div>

							<%-- <div class="form-group row">
								<label class="col-sm-2 col-form-label">Passwd</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.passwd }"
										name="passwd" readonly="readonly">
								</div>
							</div> --%>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Phone</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.phone }"
										name="phone" readonly="readonly">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Address</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.address }"
										name="address" readonly="readonly">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Birth</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.birth }"
										name="birth" readonly="readonly">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Department</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.grp }"
										name="grp" readonly="readonly">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Position</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.pos }"
										name="pos" readonly="readonly">
								</div>
							</div>
							<div class="seperator"></div>


						</div>
						<div class="">
							<div class="">
								<div class="row">
									<div class="col-sm-2"></div>
									<div class="col-sm-7">
										<button type="button" class="btn-secondry m-r5"
											onclick="location.href='badminUpdate?email=${itm.email}'">Update</button>
											<button type="button" class="btn-secondry m-r5" id="del"
																onclick="confirm_delete()" value="${itm.email }">Delete</button>
										<button type="button" class="btn-secondry m-r5"
											onclick="location.href='badminMain'">Go Back</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Your Profile Views Chart END-->
		</div>
	</div>
</main>
<div class="ttr-overlay"></div>