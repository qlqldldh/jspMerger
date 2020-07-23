<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">Catalogue</h4>
			<ul class="db-breadcrumb-list">
				<li><!-- <a href="/book/admin/index"><i class="fa fa-home"> --></i>Menu</a></li>
				<li>Library</li>
				<li>Catalogue</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>All Books</h4>
					</div>
					<div class="widget-inner"></div>
					<br />
					<main>
						<div class="container-fluid">
							<div class="card mb-4">
								<!-- <div class="card-header">
									<i class="fas fa-table mr-1"></i> Catalgoue
								</div> -->
							<!-- 	<div
									style="text-align: right; padding-right: 20px; padding-top: 20px;">
									<button type="button" class="btn-secondry m-r5"
										onclick="location.href='booklistInsert'">Insert</button>
								</div> -->
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											width="100%" cellspacing="0">
										<thead>
												<tr>
													<th>Title</th>
													<th>Author</th>
													<th>Publisher</th>
													<!-- <th>Publication Date</th> -->
													<th>ISBN</th>
													<th>Category</th>
													<th>Location of Book</th>
													<!-- <th># Printed Copies</th>
													<th>Description</th>
													<th># Pages</th>
													<th>Discontinued -->
													<th>
												</tr>
											</thead>
										<tfoot style="border-color: white;">
												<!-- <tr>
													<th>Book ID</th>
													<th>Title</th>
													<th>Author</th>
													<th>Publisher</th>
													<th>Publication Date</th>
													<th>ISBN</th>
													<th>Category</th>
													<th>Place of Publication</th>
													<th>Number of Printed Copies</th>
													<th>Description</th>
													<th>Number of Pages</th>
													<th>Discontinue -->
													 <!-- <p>
										<input type="radio" >
										Yes</input>
									</p>
									<p>
										<input type="radio" />
										No</input>
									</p> -->
													<!-- <th>
												</tr> -->
											</tfoot>
									<tbody>
												<c:forEach var="book" items="${booklist }">
													<tr>
														<td><a href="booklistDetail?bid=${book.bid }">${book.title}</a></td>
														<td>${book.author}</td>
														<td>${book.publisher}</td>
														<%-- <td>${book.pubdate}</td> --%>
														<td>${book.isbn}</td>
														<td>${book.bcategory}</td>
														<td>${book.blocation}</td>
													<%-- 	<td>${book.bcount}</td>
														<td>${book.descrip}</td>
														<td>${book.bpages}</td>
														<td>${book.willdel}</td> --%>

														<td><button type="button" class="btn-secondry m-r5"
																onclick="location.href='booklistUpdate?bid=${book.bid}'">Update</button>&nbsp;
															<button type="button" class="btn-secondry m-r5"
																onclick="location.href='booklistDelete?bid=${book.bid}'">Delete</button></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</main>
				</div>
			</div>
		</div>
		<!-- Your Profile Views Chart END-->
	</div>
	</div>
</main>
<div class="ttr-overlay"></div> 
