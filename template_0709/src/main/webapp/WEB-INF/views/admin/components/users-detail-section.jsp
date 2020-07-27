<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">Detail Info of User</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="index"><i class="fa fa-home"></i>Home</a></li>
				<li>user-detail</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>user-detail</h4>
					</div>
					<div class="widget-inner">
							<div class="">
								<div class="form-group row">
									<div class="col-sm-10  ml-auto">
										<h3>Personal Details</h3>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Email</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value=${bgen.email } name="email" readonly="readonly">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Name</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value=${bgen.name } name="name" readonly="readonly">
									</div>
								</div>
								<%-- <div class="form-group row">
									<label class="col-sm-2 col-form-label">Password</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value=${bgen.passwd } name="passwd" readonly="readonly">
										
									</div>
								</div> --%>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Phone</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											value=${bgen.phone } name="phone" readonly="readonly">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Address</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											value=${bgen.address } name="address" readonly="readonly">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Birth</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											value=${bgen.birth } name="birth" readonly="readonly">
									</div>
								</div>
								
								<div class="seperator"></div>

							</div>
							<div class="">
								<div class="">
									<div class="row">
										<div class="col-sm-2"></div>
										<div class="col-sm-7">
											<button type="button" class="btn-secondry m-r5" onclick="location.href='genUpdate?email=${bgen.email}'">Update</button>
												<button type="button" class="btn-secondry m-r5" onclick="location.href='genDelete?email=${bgen.email}'">Delete</button>
												<button type="button" class="btn-secondry m-r5" onclick="location.href='genMain'">Go Back</button>
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
