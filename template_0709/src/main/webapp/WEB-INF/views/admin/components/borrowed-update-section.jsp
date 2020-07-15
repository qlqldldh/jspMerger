	<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">borrowed-update</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>borrowed-update</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>borrowed-update</h4>
						</div>
						<div class="widget-inner">
							<form class="edit-profile m-b30" action="borrowedUpdatedo" method="GET">
								<div class="">
									<div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3> orders-update </h3>
										</div>
									</div>

									<div class="form-group row">
									<label class="col-sm-2 col-form-label">BorrowedId</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.rentid }" name="rentid">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">BorrowedEmail</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.renemail }" name="renemail">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">BorrowedBid</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.renbid }" name="renbid">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Isdate</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.isdate }" name="isdate">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Exdate</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.exdate }" name="exdate">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">BorrowedDate</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.retdate }" name="retdate">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Bldate</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.bldate }" name="bldate">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">IsExpanded</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.isExpanded }" name="isExpanded">
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