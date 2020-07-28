<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">Update Order</h4>
				<ul class="db-breadcrumb-list">
				<li><a href="/book/admin/index">Menu</a></li>
					<li>Balance</li>
					<li><a href="/book/admin/ordersMain">Orders</a></li>
					<li>Update Order</li>
				</ul>
			</div>	
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>Order Information</h4>
						</div>
						<div class="widget-inner">
							<form class="edit-profile m-b30" action="ordersUpdatedo" method="GET">
								<div class="">
									<!-- <div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3> orders-update </h3>
										</div>
									</div> -->
	
									<div class="form-group row">
									<div class="col-sm-7">
										<input class="form-control" type="hidden" value="${itm.ordernum}" name="ordernum">
									</div>
								</div>
									
									<div class="form-group row">
									<label class="col-sm-2 col-form-label">Odate</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.odate }" name="odate">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Txnum</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.txnum }" name="txnum">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Title</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.title }" name="title">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">ISBN</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.isbn }" name="isbn">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Price</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.price }" name="price">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Unit</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.unit }" name="unit">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">ExtraCost</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.extracost }" name="extracost">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Descript</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.descript }" name="descript">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">TotalCost</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" value="${itm.totalcost }" name="totalcost">
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