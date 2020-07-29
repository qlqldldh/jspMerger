<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script>
	function confirm_delete(dd) {
		var x = confirm("Are you sure you want to delete?");
		if (x)
			location.href = 'reservedDeletedo?resid=' + dd;
		else
			return false;
	}
</script>
<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">Reserved</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="/book/admin/index">
						Menu
				</a></li>
				<li>Circulation</li>
				<li>Reserved</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>All Reserved Books</h4>
					</div>
					<div class="widget-inner"></div>
					<br />
					<main>
						<div class="container-fluid">
							<!-- <div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-table mr-1"></i> reserved-main
								</div> -->
											<!-- <div style="text-align:right;padding-right:20px;padding-top:20px;">
												<button type="button" class="btn-secondry m-r5" onclick="location.href='reservedInsert'">Insert</button>
											</div> -->
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
											<thead>
												<tr>
													<th>Reservation ID</th>
													<th>Email</th>
													<th>Book ID</th>
													<th>Date of Reservation</th>
													<th></th>
												</tr>
											</thead>
											<tfoot>
												<tr>
												<!-- 	<th>resid</th>
													<th>resemail</th>
													<th>resbid</th>
													<th>resdate</th>
													<th>Option</th> -->
												</tr>
											</tfoot>
											<tbody>
													<c:forEach var="itm" items="${reservedlist }">
														<tr>
															<td>${itm.resid }</td>
															<td>${itm.resemail }</td>
															<td>${itm.resbid }</td>
															<td>${itm.resdate }</td>

															<td><!-- <button type="button" class="btn-secondry m-r5" onclick="">Update</button>&nbsp; -->
																<%-- <button type="button" class="btn-secondry m-r5" onclick="location.href='reservedDeletedo?resid=${itm.resid}'">Delete</button> --%>
																<button type="button" class="btn-secondry m-r5" id="del"
																onclick="confirm_delete(${itm.resid})" value="${itm.resid}">Delete</button>
																
																</td>
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