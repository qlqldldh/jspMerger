<!-- header start -->
	<header class="ttr-header">
		<div class="ttr-header-wrapper">
			<!--sidebar menu toggler start -->
			<div class="ttr-toggle-sidebar ttr-material-button">
				<i class="ti-close ttr-open-icon"></i>
				<i class="ti-menu ttr-close-icon"></i>
			</div>
			<!--sidebar menu toggler end -->
			<!--logo start -->
			<div class="ttr-logo-box">
				<div>
					<a href="index" class="ttr-logo">
						<img alt="" class="ttr-logo-mobile" src="${pageContext.request.contextPath}/assets/images/logo-mobile.png" width="30" height="30">
						<img alt="" class="ttr-logo-desktop" src="${pageContext.request.contextPath}/assets/images/logo-white.png" width="160" height="27">
					</a>
				</div>
			</div>
			<!--logo end -->
			<div class="ttr-header-menu">
				<!-- header left menu start -->
				<ul class="ttr-header-navigation">
					<li>
						<a href="index" class="ttr-material-button ttr-submenu-toggle">HOME</a>
					</li>
					<li>
						<a href="#" class="ttr-material-button ttr-submenu-toggle"> Quick menu <i class="fa fa-angle-down"></i></a>
						<div class="ttr-header-submenu">
							<ul>
								<li><a href="index">Dashboard</a></li>
								<li><a href="booklistMain">BookList</a></li>
                                <li><a href="borrowedMain">Borrowed book</a></li>
								<li><a href="reservedMain">Reserved book</a></li>
                                <li><a href="management-user.html">Renewed a book</a></li>
                                <li><a href="bhMain">Requested books</a></li>
                                <li><a href="genMain">User</a></li>
                                <li><a href="badminMain">Admin</a></li>
                                <li><a href="hrMain">Employee</a></li>
                                <li><a href="balance">Balance</a></li>
								<li><a href="ordersMain">Orders</a></li>
								<li><a href="incomeMain">Income</a></li>
								<li><a href="noticeMain">Notice</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<!-- header left menu end -->
			</div>
			<div class="ttr-header-right ttr-with-seperator">
				<!-- header right menu start -->
				<ul class="ttr-header-navigation">
					
					<li>
						<a href="#" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-icon"><i class="ti-user"></i></span></a>
						<div class="ttr-header-submenu">
							<ul>
								<li><a href="userProf">My profile</a></li>
								<li><a href="../user/logout">Logout</a></li>
							</ul>
						</div>
					</li>
				<!-- header right menu end -->
			</div>
			<!--header search panel start -->
			<div class="ttr-search-bar">
				<form class="ttr-search-form">
					<div class="ttr-search-input-wrapper">
						<input type="text" name="qq" placeholder="search something..." class="ttr-search-input">
						<button type="submit" name="search" class="ttr-search-submit"><i class="ti-arrow-right"></i></button>
					</div>
					<span class="ttr-search-close ttr-search-toggle">
						<i class="ti-close"></i>
					</span>
				</form>
			</div>
			<!--header search panel end -->
		</div>
	</header>
	<!-- header end -->