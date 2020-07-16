<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!--Main container start -->
	<main class="ttr-wrapper">
		<div class="container-fluid">
			<div class="db-breadcrumb">
				<h4 class="breadcrumb-title">Orders</h4>
				<ul class="db-breadcrumb-list">
					<li><a href="#"><!-- <i class="fa fa-home"> --></i>Menu</a></li>
					<li>Balance</li>
					<li>Orders</li>
				</ul>
			</div>
			<div class="row">
				<!-- Your Profile Views Chart -->
				<div class="col-lg-12 m-b30">
					<div class="widget-box">
						<div class="wc-title">
							<h4>List of Book Orders</h4>
						</div>
						<div class="widget-inner"></div>
						<br />
						<main>
							<div class="container-fluid">
								<div class="card mb-4">
									<!-- <div class="card-header">
										<i class="fas fa-table mr-1"></i> orders-main
									</div> -->
									<!-- <div style="text-align:right;padding-right:20px;padding-top:20px;">
												<button type="button" class="btn-secondry m-r5" onclick="location.href='ordersInsert'">Insert</button>
											</div> -->
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-bordered" id="dataTable"
												width="100%" cellspacing="0">
												<thead>
													<tr>
														<!-- <th>OrderID</th> -->
														<th>Transaction ID</th>
														<th>Order Date</th>
														<th>Title</th>
														<!-- <th>ISBN</th> -->
														<th>Price</th>
														<th>Unit</th>
														<!-- <th>Extra Costs</th> -->
														<!-- <th>descript</th> -->
														<th>TotalCost
														<th>
														
														<!-- <th>Option</th>
														<th>Update</th> -->
														
													</tr>
												</thead>
												<tfoot style="border-color:white;">
													<tr>
														<!-- th>Ordernum</th>
														<th>Odate</th>
														<th>txnum</th>
														<th>Title</th>
														<th>ISBN</th>
														<th>Price</th>
														<th>unit</th>
														<th>ExtraCost</th>
														<th>descript</th>
														<th>TotalCost</th>
														<th>Option</th> -->
														<!-- <th>Update</th> -->
														
													</tr>
												</tfoot>
												<tbody>
													<c:forEach var="itm" items="${orderslist }">
													<tr>
												 		<%-- <td>${itm.ordernum }</td> --%>
														<td>${itm.odate }</td>
														<td>${itm.txnum }</td>
														<td>${itm.title }</td>
													<%-- 	<td>${itm.isbn }</td> --%>
														<td>${itm.price }</td>
														<td>${itm.unit }</td>
														<%-- <td>${itm.extracost }</td>
														<td>${itm.descript }</td> --%>
														<td>${itm.totalcost }</td>
														
														<td><button type="button" class="btn-secondry m-r5" onclick="location.href='ordersUpdate?ordernum=${itm.ordernum}'">Update</button>&nbsp;
														<button type="button" class="btn-secondry m-r5" onclick="location.href='ordersDeletedo?ordernum=${itm.ordernum}'">Delete</button></td>
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
