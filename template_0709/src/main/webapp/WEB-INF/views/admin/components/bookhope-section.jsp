<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">BookHope</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>Bookhope</li>
				</ul>
			</div>
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>BookHope</h4>
						</div>
						<div class="widget-inner"></div>
						<br />
						<main>
							<div class="container-fluid">
								<div class="card mb-4">
									<div class="card-header">
										<i class="fas fa-table mr-1"></i> BookHope
									</div>
									<div style="text-align:right;padding-right:20px;padding-top:20px;"></div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-bordered" id="dataTable"
												width="100%" cellspacing="0">
												<thead>
													<tr>
														<th>BookhopeID</th>
														<th>User-email</th>
														<th>Title</th>
														<th>Author</th>
														<th>Publisher</th>
														<th>Comments</th>
														<th>Option</th>
														<!-- <th>Update</th> -->
													</tr>
												</thead>
												<tfoot style="border-color:white;">
													<tr>
														<th>BookhopeID</th>
														<th>User-email</th>
														<th>Title</th>
														<th>Author</th>
														<th>Publisher</th>
														<th>Comments</th>
														<th>Option</th>
														<!-- <th>Update</th> -->
														
													</tr>
												</tfoot>
												<tbody>
													<c:forEach var="bh" items="${bookhopelist }">
													<tr>
														<td>${bh.bhid }</td>
														<td>${bh.uemail }</td>
														<td>${bh.btitle }</td>
														<td>${bh.bauthor }</td>
														<td>${bh.bpublisher }</td>
														<td>${bh.comments }</td>
														<td><button type="button" class="btn-secondry m-r5" onclick="location.href='bhDel?bhid=${bh.bhid}'">Deny</button>&nbsp;
														<button type="button" class="btn-secondry m-r5" onclick="location.href='bhInsert?bhid=${bh.bhid}'">Accept</button></td>
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