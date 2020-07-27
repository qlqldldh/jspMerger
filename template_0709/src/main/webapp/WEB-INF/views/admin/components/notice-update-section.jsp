
<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">notice-update</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
				<li>notice-update</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>notice-update</h4>
					</div>
					<div class="widget-inner">
						<form action="noticeUpdatedo" class="edit-profile m-b30"
							method="get">
							<div class="">
								<div class="form-group row">
									<div class="col-sm-10  ml-auto">
										<h3>Notice Details</h3>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Notice ID</label>
									<div class="col-sm-7">
										<input class="form-control" name="nid" type="text"
											value="${nitem.nid}" readonly="readonly">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Upload Date</label>
									<div class="col-sm-7">
										<input class="form-control" name="uldate" type="text"
											value="${nitem.uldate}"> <span class="help">YY-MM-DD</span>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Title</label>
									<div class="col-sm-7">
										<input class="form-control" name="title" type="text"
											value="${nitem.title}">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Contents</label>
									<div class="col-sm-7">
										<input class="form-control" name="ncontents" type="text"
											value="${nitem.ncontents}">
									</div>
								</div>

								<div class="seperator"></div>

								<div class="form-group row">
									<div class="col-sm-10 ml-auto">

										<div class="">
											<div class="">
												<div class="row">
													<div class="col-sm-2"></div>
													<div class="col-sm-7">
														<input type="submit" class="btn" value="Update"/> <input
															type="reset" class="btn-secondry" value="Cancel"/>
													</div>
												</div>
											</div>
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
