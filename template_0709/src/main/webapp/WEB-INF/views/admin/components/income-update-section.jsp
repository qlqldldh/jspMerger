<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">income update</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>income update</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>income update</h4>
						</div>
						<div class="widget-inner">
							<form class="edit-profile m-b30"  action="incomeUpdatedo"  method="post">
								<div class="">
									<div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3>update Details</h3>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Incomenum</label>
										<div class="col-sm-7">
											<input class="form-control" type="hidden" name="incomenum"  value=${icl.incomenum }>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Idate</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" name="idate" value="${icl.idate }">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Price</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" name="price" value="${icl.price }">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Itype</label>
										<div class="col-sm-7">
											<input class="form-control" type="text" name="itype" value="${icl.itype }">
										</div>
									</div>
									
								<div class="">
									<div class="">
										<div class="row">
											<div class="col-sm-2">
											</div>
											<div class="col-sm-7">
												<input type="submit" class="btn" value="update">
												<button type="button" class="btn-secondry" onclick="location.href='incomeMain'">Cancel</button>
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