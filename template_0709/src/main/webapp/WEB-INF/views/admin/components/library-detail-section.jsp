
<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">Book Information</h4>
			<ul class="db-breadcrumb-list">
				<li>
					<!-- <a href="/book/admin/index"><i class="fa fa-home"> -->
					</i>Menu</a>
				</li>
				<li>Library</li>
				<li><a href="/book/admin/booklistMain">Catalogue</li>
				<li>Book Information</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>
							#${item.bid}: ${item.title}
						</h4>
					</div>
					<div class="widget-inner">
						<div class="">
							<!-- <div class="form-group row">
									<div class="col-sm-10  ml-auto">
										<h3>Booklist</h3>
									</div>
								</div> -->
							<%-- <div class="form-group row">
									<label class="col-sm-2 col-form-label">Book ID</label>
									<div class="col-sm-7">
										<input class="form-control" name="bid" type="text"
											value="${item.bid}" readonly="readonly">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Title</label>
									<div class="col-sm-7">
										<input class="form-control" name="title" type="text"
											value="${item.title}" readonly="readonly">
									</div>
								</div> --%>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Author</label>
								<div class="col-sm-7">
									<input class="form-control" name="author" type="text"
										value="${item.author}" readonly="readonly">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Publisher</label>
								<div class="col-sm-7">
									<input class="form-control" name="publisher" type="text"
										value="${item.publisher}" readonly="readonly">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Publication Date</label>
								<div class="col-sm-7">
									<input class="form-control" name="pubdate" type="text"
										value="${item.pubdate}" readonly="readonly">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">ISBN</label>
								<div class="col-sm-7">
									<input class="form-control" name="isbn" type="text"
										value="${item.isbn}" readonly="readonly"> <span
										class="help">Just numbers. Without lines.</span>
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Number of Pages</label>
							<div class="col-sm-7">
								<input class="form-control" name="bpages" type="text"
									value="${item.bpages}" readonly="readonly">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Category</label>
							<div class="col-sm-7">
								<input class="form-control" name="bcategory" type="text"
									value="${item.bcategory}" readonly="readonly">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Place of
								Publication</label>
							<div class="col-sm-7">
								<input class="form-control" name="blocation" type="text"
									value="${item.blocation}" readonly="readonly"><span
									class="help">City, Country.</span>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Number of Printed
								Copies</label>
							<div class="col-sm-7">
								<input class="form-control" name="bcount" type="text"
									value="${item.bcount}" readonly="readonly">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Description</label>
							<div class="col-sm-7">
								<input class="form-control" name="descrip" type="text"
									value="${item.descrip}" readonly="readonly">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Discontinue book</label>
							<div class="col-sm-7">
								<input class="form-control" name="willdel" type="text"
									value="${item.willdel}" readonly="readonly">
								<%-- <p>
										<input type="radio" name="willdel" value="${item.willdel }=0">
										Yes</input>
									</p>
									<p>
										<input type="radio" name="willdel" value="${item.willdel }=1" />
										No</input>
									</p> --%>
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
												<button type="button" class="btn-secondry m-r5"
													onclick="location.href='booklistUpdate?bid=${item.bid}'">Update</button>
												<button type="button" class="btn-secondry m-r5"
													onclick="location.href='booklistDelete?bid=${item.bid}'">Delete</button>
												<button type="button" class="btn-secondry m-r5"
													onclick="location.href='booklistMain'">Go Back</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		<!-- Your Profile Views Chart END-->
	</div>

</main>
<div class="ttr-overlay"></div>
