<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">hr-main</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><i class="fa fa-home"></i>Home</a></li>
					<li>hr-main</li>
				</ul>
			</div>
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>hr-main</h4>
						</div>
						<div class="widget-inner"></div>
						<br />
						<main>
							<div class="container-fluid">
								<div class="card mb-4">
									<div class="card-header">
										<i class="fas fa-table mr-1"></i> hr-main
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-bordered" id="dataTable"
												width="100%" cellspacing="0">
												<thead>
													<tr>
														<th>Name</th>
														<th>Tel</th>
														<th>Pay</th>
														<th>Position</th>
														<th>Department</th>
														<th>Update</th>
														<!-- <th>Update</th> -->
													</tr>
												</thead>
												<tfoot>
													<tr>
														<th>Name</th>
														<th>Tel</th>
														<th>Pay</th>
														<th>Position</th>
														<th>Department</th>
														<th>Update</th>
														<!-- <th>Update</th> -->
													</tr>
												</tfoot>
												<tbody>
													<c:forEach var="itm" items="${hrlist }">
													<tr>
														<td>${itm.name }</td>
														<td>${itm.tel }</td>
														<td>${itm.pay }</td>
														<td>${itm.position }</td>
														<td>${itm.dname }</td>
														<td><button type="button" class="btn-secondry m-r5">Insert</button>&nbsp;
														<button type="button" class="btn-secondry m-r5">Update</button></td>
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