<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">notice-Main</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
				<li>notice-Main</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>notice-Main</h4>
					</div>
					<div class="widget-inner"></div>
					<br />
					<main>
						<div class="container-fluid">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-table mr-1"></i> notice-Main
								</div>
								<div
									style="text-align: right; padding-right: 20px; padding-top: 20px;">
									<button type="button" class="btn-secondry m-r5"
										onclick="location.href='noticeInsert'">Insert</button>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											width="100%" cellspacing="0">
											<thead>
												<tr>
													<th>Notice ID</th>
													<th>Email</th>
													<th>Upload Date</th>
													<th>Contents</th>
													<!-- <th>Update</th> -->
												</tr>
											</thead>
											<tfoot style="border-color: white;">
												<tr>
													<th>Notice ID</th>
													<th>Email</th>
													<th>Upload Date</th>
													<th>Contents</th>
													<!-- <th>Update</th> -->

												</tr>
											</tfoot>
											<tbody>
												<c:forEach var="itm" items="${noticelist }">
													<tr>
														<td>${itm.nid}</td>
														<td>${itm.nemail}</td>
														<td>${itm.uldate}</td>
														<td>${itm.ncontents}</td>
														<td><button type="button" class="btn-secondry m-r5"
																onclick="location.href='noticeUpdate?nid=${itm.nid}'">Update</button>&nbsp;
															<button type="button" class="btn-secondry m-r5"
																onclick="location.href='noticeDelete?nid=${itm.nid}'">Delete</button></td>
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