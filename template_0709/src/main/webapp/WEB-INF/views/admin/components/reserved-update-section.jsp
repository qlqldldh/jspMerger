	<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">reserved-update</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>reserved-update</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>reserved-update</h4>
						</div>
						<div class="widget-inner">
							<form class="edit-profile m-b30" action="reservedUpdatedo" method="GET">
								<div class="">
									<div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3> reserved-update </h3>
										</div>
									</div>

									<div class="form-group row">
									<label class="col-sm-2 col-form-label">Resid</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.resid }" name="resid">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Resemail</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.resemail }" name="resemail">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Resbid</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.resbid }" name="resbid">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Resdate</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.resdate }" name="resdate">
									</div>
								</div>
									<div class="seperator"></div>
									
									
								</div>
								<div class="">
									<div class="">
										<div class="row">
											<div class="col-sm-2">
											</div>
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