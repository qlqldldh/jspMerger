
<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">library-insert</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
				<li>library-insert</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>library-insert</h4>
					</div>
					<div class="widget-inner">
						<form action="booklistInsertdo" class="edit-profile m-b30" method="post">
						<div class="">
								<div class="form-group row">
									<div class="col-sm-10  ml-auto">
										<h3>Booklist</h3>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Book ID</label>
									<div class="col-sm-7">
										<input class="form-control" name="bid" type="text"
											 >
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Title</label>
									<div class="col-sm-7">
										<input class="form-control" name="title" type="text"
											>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Author</label>
									<div class="col-sm-7">
										<input class="form-control" name="author" type="text"
											>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Publisher</label>
									<div class="col-sm-7">
										<input class="form-control" name="publisher" type="text"
										>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Publication Date</label>
									<div class="col-sm-7">
										<input class="form-control" name="pubdate" type="text"
										>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">ISBN</label>
									<div class="col-sm-7">
										<input class="form-control" name="isbn" type="text"
										> <span class="help">Just
											numbers. Without lines.</span>
									</div>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Number of Pages</label>
								<div class="col-sm-7">
									<input class="form-control" name="bpages" type="text"
										>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Category</label>
								<div class="col-sm-7">
									<input class="form-control" name="bcategory" type="text"
										>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Place of
									Publication</label>
								<div class="col-sm-7">
									<input class="form-control" name="blocation" type="text"
									><span class="help">City,
										Country.</span>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Number of Printed
									Copies</label>
								<div class="col-sm-7">
									<input class="form-control" name="bcount" type="text"
								>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Description</label>
								<div class="col-sm-7">
									<input class="form-control" name="descrip" type="text"
										>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Discontinue book</label>
								<div class="col-sm-7">
								<input class="form-control" name="willdel" type="text"
										><span class="help">
											"0"= NO, "1"= YES</span>
								<!-- <div class="col-sm-7">
									<p>
										<input type="radio" name="willdel">
										Yes</input>
									</p>
									<p>
										<input type="radio" name="willdel" />
										No</input>
									</p> -->
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
														<input type="submit" class="btn-secondry m-r5" value= "Insert"/>
														<input type="reset" class="btn-secondry" value= "Cancel"/>
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
