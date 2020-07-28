<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script>
	function confirm_delete() {
		var x = confirm("Are you sure you want to delete?");
		var dd = document.getElementById("del").value;
		if (x)
			location.href='bhDel?bhid='+dd;
		else
			return false;
	}
</script>

<!--Main container start -->
<main class="ttr-wrapper">
	<div class="container-fluid">
		<div class="db-breadcrumb">
			<h4 class="breadcrumb-title">Detail of Requested Book</h4>
			<ul class="db-breadcrumb-list">
				<li><a href="#">
						<!-- <i class="fa fa-home"> -->
						</i>Menu
				</a></li>
				<li>Requested Book</li>
				<li>Detail of Requested Book</li>
			</ul>
		</div>
		<div class="row">
			<!-- Your Profile Views Chart -->
			<div class="col-lg-12 m-b30">
				<div class="widget-box">
					<div class="wc-title">
						<h4>Book Information</h4>
					</div>
					<div class="widget-inner">
						<div class="">
							<!-- <div class="form-group row">
										<div class="col-sm-10  ml-auto">
											<h3> orders-update </h3>
										</div>
									</div> -->

							<div class="form-group row">
								<div class="col-sm-7"></div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Request ID</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.bhid }"
										name="bhid" readonly="readonly">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Email</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.uemail }"
										name="uemail" readonly="readonly">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Title</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.btitle }"
										name="btitle" readonly="readonly">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Author</label>
								<div class="col-sm-7">
									<input class="form-control" type="text" value="${itm.bauthor }"
										name="author" readonly="readonly">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Publisher</label>
								<div class="col-sm-7">
									<input class="form-control" type="text"
										value="${itm.bpublisher }" name="bpublisher"
										readonly="readonly">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Comments</label>
								<div class="col-sm-7">
									<input class="form-control" type="text"
										value="${itm.comments }" name="comments" readonly="readonly">
								</div>
							</div>
							<div class="seperator"></div>
						</div>
						<div class="">
							<div class="">
								<div class="row">
									<div class="col-sm-2"></div>
									<div class="col-sm-7">
										<%-- <button type="button" class="btn-secondry m-r5" onclick="location.href='bhDel?bhid=${itm.bhid}'">Deny</button> --%>
										<button type="button" class="btn-secondry m-r5" id="del"
											onclick="return confirm_delete();" value="${bh.bhid }">Deny</button>
										&nbsp;
										<button type="button" class="btn-secondry m-r5"
											onclick="location.href='bhInsert?btitle=${itm.btitle}&bauthor=${itm.bauthor}&bpublisher=${itm.bpublisher}&bhid=${itm.bhid}'">Accept</button>
										<button type="button" class="btn-secondry m-r5"
											onclick="location.href='bhMain'">Go Back</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Your Profile Views Chart END-->
		</div>
	</div>
</main>
<div class="ttr-overlay"></div>