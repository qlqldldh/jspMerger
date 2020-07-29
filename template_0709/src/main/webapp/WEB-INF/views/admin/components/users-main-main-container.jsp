<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script>
	function confirm_delete(dd) {
		var x = confirm("Are you sure you want to delete?");
		if (x)
			location.href = 'genDelete?email=' + dd;
		else
			return false;
	}
</script>
<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">User List</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="/book/admin/index">Menu</a></li>
					<li>Users</li>
					<li>User List</li>
				</ul>
			</div>
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>All Users</h4>
						</div>
						<div class="widget-inner"></div>
						<br />
						<main>
							<div class="container-fluid">
								<div class="card mb-4">
									<!-- <div class="card-header">
										<i class="fas fa-table mr-1"></i> HR-Main
									</div> -->
									<!-- <div style="text-align:right;padding-right:20px;padding-top:20px;">
												<button type="button" class="btn-secondry m-r5" onclick="location.href='hrInsert'">Insert</button>
											</div> -->
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-bordered" id="dataTable"
												width="100%" cellspacing="0">
												<thead>
													<tr>
														<th>Email</th>
														<th>Name</th>
														<th>Phone</th>
														<th></th>
														<!-- <th>Update</th> -->
													</tr>
												</thead>
												<tfoot style="border-color:white;">
													<tr>
													<!-- 	<th>Email</th>
														<th>Name</th>
														<th>Phone</th>
														<th>Option</th> -->
														<!-- <th>Update</th> -->
														
													</tr>
												</tfoot>
												<tbody>
													<c:forEach var="itm" items="${genlist }">
													<tr>
														<td><a href="genDetail?email=${itm.email }">${itm.email }</a></td>
														<td>${itm.name }</td>
														<td>${itm.phone }</td>
														<td>
														<%-- <button type="button" class="btn-secondry m-r5" onclick="location.href='genDelete?email=${itm.email}'">Delete</button> --%>
														
														<button type="button" class="btn-secondry m-r5" id="del"
																onclick="confirm_delete(${itm.email})" value="${itm.email}">Delete</button>
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