<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">hr-update</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
				<li>hr-update</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>hr-update</h4>
					</div>
					<div class="widget-inner">
						<form class="edit-profile m-b30" action="hrUpdatedo" method="get">
						<input type="hidden" name="ptel" value="${hrItem.tel }">
							<div class="">
								<div class="form-group row">
									<div class="col-sm-10  ml-auto">
										<h3>Personal Details</h3>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Full Name</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value=${hrItem.name } name="name">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Tel</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value=${hrItem.tel } name="tel">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Pay</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value=${hrItem.pay } name="pay">
										
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Position</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											value=${hrItem.position } name="position">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Department</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"
											value=${hrItem.dname } name="dname">
									</div>
								</div>
								
								<div class="seperator"></div>

							</div>
							<div class="">
								<div class="">
									<div class="row">
										<div class="col-sm-2"></div>
										<div class="col-sm-7">
											<input type="submit" class="btn" value="Insert">
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
