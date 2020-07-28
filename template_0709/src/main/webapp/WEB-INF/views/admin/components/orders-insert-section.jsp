<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">+ Add Order</h4>
			<ul class="db-breadcrumb-list">
		<li><a href="/book/admin/index">Menu</a></li>
				<li>Balance</li>
				<li><a href="/book/admin/ordersMain">Orders</a></li>
				<li>+ Add Order</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>Insert Order Information</h4>
					</div>
					<div class="widget-inner">
						<form class="edit-profile m-b30" action="ordersInsertdo" method="GET">
							<div class="">
								<!-- <div class="form-group row">
									<div class="col-sm-10  ml-auto">
										<h3>orders-insert</h3>
									</div>
								</div> -->
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Date of Order</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" name="odate">
										<span class="help">YY-MM-DD</span>
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Transaction Num</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" name="txnum">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Title</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"  name="title">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">ISBN</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"  name="isbn">
										<span class="help">13 numbers. Without lines.</span>
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Price</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" name="price">
									</div>
								</div>
								<!-- <div class="form-group row">
									<label class="col-sm-2 col-form-label">Unit</label>
									<div class="col-sm-7">
										<input class="form-control" type="text" placeholder="Unit" name="unit">
									</div>
								</div> -->
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Extra Cost</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"  name="extracost">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Description</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"  name="descript">
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Total Cost</label>
									<div class="col-sm-7">
										<input class="form-control" type="text"  name="totalcost">
										<span class="help">Price+Extra Cost</span>
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