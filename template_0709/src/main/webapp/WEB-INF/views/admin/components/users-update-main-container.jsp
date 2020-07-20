<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">Update User's Info</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="index"><i class="fa fa-home"></i>Home</a></li>
				<li>user-update</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>user-update</h4>
					</div>
					<div class="widget-inner">
						<form class="edit-profile m-b30" action="genUpdatedo" method="get">
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
										<input class="form-control" type="text" value=${bgen.name } name="name">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Password</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value=${bgen.passwd } name="passwd">
										
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Phone</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											value=${bgen.phone } name="phone">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Address</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											value=${bgen.address } name="address">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Birth</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											value=${bgen.birth } name="birth">
									</div>
								</div>
								
								<div class="seperator"></div>

							</div>
							<div class="">
								<div class="">
									<div class="row">
										<div class="col-sm-2"></div>
										<div class="col-sm-7">
											<input type="submit" class="btn" value="Update">
											<input type="reset" class="btn-secondry" value="Cancel">
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
