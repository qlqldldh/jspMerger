<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script>
	function confirm_delete(dd) {
		var x = confirm("Are you sure you want to delete?");
		if (x)
			location.href = 'incomeDelete?incomenum=' + dd;
		else
			return false;
	}
</script>
<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">Income Information</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="/admin/index"> <!-- <i class="fa fa-home"> -->
						Menu
				</a></li>
				<li>Balance</li>
				<li>Income</li>
				<li>Income List</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>All Incomes</h4>
					</div>
<!-- 					<div class="widget-inner"></div> -->
					<br />
					<main>
						<div class="container-fluid">
							<div class="card mb-4">
								<!-- <div class="card-header">
									<i class="fas fa-table mr-1"></i> Income-Main
								</div> -->
								<!-- <div
									style="text-align: right; padding-right: 20px; padding-top: 20px;">
									<button type="button" class="btn-secondry m-r5"
										onclick="location.href='incomeInsert'">Insert</button>
								</div> -->
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											width="100%" cellspacing="0">
											<thead>
												<tr>
													<th>Income ID</th>
													<th>Income Date</th>
													<th>$</th>
													<th>Form</th>
													<th></th>
													<!-- <th>Update</th> -->
												</tr>
											</thead>
											<tfoot style="border-color: white;">
												<tr>
													<!-- 	<th>incomenum</th>
													<th>Idate</th>
													<th>Price</th>
													<th>Itype</th>
													<th>Option</th> -->
													<!-- <th>Update</th> -->

												</tr>
											</tfoot>
											<tbody>
												<c:forEach var="icl" items="${ incomelist }">
													<tr>
														<td>${icl.incomenum }</td>
														<td>${icl.idate }</td>
														<td>${icl.price }</td>
														<td>${icl.itype }</td>

														<td><button type="button" class="btn-secondry m-r5"
																onclick="location.href='incomeUpdate?incomenum=${icl.incomenum}'">Update</button>&nbsp;
															<%-- 	<button type="button" class="btn-secondry m-r5"
																onclick="location.href='incomeDelete?incomenum=${icl.incomenum}'">Delete</button> --%>
															<button type="button" class="btn-secondry m-r5" id="del"
																onclick="confirm_delete(${icl.incomenum})"
																value="${icl.incomenum}">Delete</button></td>
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