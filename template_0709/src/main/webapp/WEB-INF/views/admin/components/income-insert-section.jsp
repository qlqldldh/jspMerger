<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">+ Add Income</h4>
				<ul class="db-breadcrumb-list">
				<li><a href="/admin/index">
						<!-- <i class="fa fa-home"> -->
						Menu
				</a></li>
				<li>Balance</li>
				<li>Income</li>
				<li><a href="book/admin/incomeMain"/>Income List</li>
				<li>+ Add Income</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>Insert Income Information</h4>
						</div>
						<div class="widget-inner">
							<form class="edit-profile m-b30" action="incomeInsertdo"  method="post" >
								<div class="">
									<!-- <div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3>Income Details</h3>
										</div>
									</div> -->
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Date of Income</label>
										<div class="col-sm-7">
											<input class="form-control" name="idate" id="idate" type="text" placeholder="Idate">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Quantity</label>
										<div class="col-sm-7">
											<input class="form-control" name="price" id="price" type="text" placeholder="Price">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">Form</label>
										<div class="col-sm-7">
											<input class="form-control" name="itype" id="itype" type="text" placeholder="Itype">
										</div>
									</div>
								
								</div>
								<div class="">
									<div class="">
										<div class="row">
											<div class="col-sm-2">
											</div>
											<div class="col-sm-7">
												<input type="submit" class="btn" value="Upload">
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