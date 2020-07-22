<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Start: Book & Media Section -->
<div id="content" class="site-content">
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="books-media-list">
				<div class="container">
					<div class="row">
						<jsp:include page="search-section.jsp" flush="false" />
					</div>
					<div class="row">
						<div class="col-md-9 col-md-push-3">
							<%-- <div class="filter-options margin-list">
								<div class="row">
									<c:out value="${paging.cntPerPage }"></c:out>
									<div style="float: right; width: 100px">
										<select id="cntPerPage" name="sel" onchange="selChange()">
											<option value="5"
												<c:if test="${paging.cntPerPage eq 5}">selected</c:if>>5줄
												보기</option>
											<option value="10"
												<c:if test="${paging.cntPerPage eq 10}">selected</c:if>>10줄
												보기</option>
											<option value="15"
												<c:if test="${paging.cntPerPage eq 15}">selected</c:if>>15줄
												보기</option>
											<option value="20"
												<c:if test="${paging.cntPerPage eq 20}">selected</c:if>>20줄
												보기</option>
										</select>

										<!-- <select id=cntPerPage name=sel onchange="selChange()">
       								        <option value="5">5</option>
            								<option value="10">10</option>
          								    <option value="15">15</option>
            								<option value="20">20</option>
       									 </select> -->
									</div>
									<!-- 옵션선택 끝 -->

								</div>
							</div> --%>

							<%-- <!-- <div id="outter"> -->
							<div class='container'>
								 <div style="float: right; padding-right:300px; margin-bottom:70px">
									<select id="cntPerPage" name="sel" onchange="selChange()">
										<option value="5"
											<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄
											보기</option>
										<option value="10"
											<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄
											보기</option>
										<option value="15"
											<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄
											보기</option>
										<option value="20"
											<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄
											보기</option>
									</select>
								 </div>
							</div>
							<!-- </div> -->
							
								<!-- 옵션선택 끝 --> --%>

							<c:forEach var="itm" items="${bbooklist }">
								<div class="books-list">
									<article>
										<div class="single-book-box">
											<div class="post-thumbnail">
												<div class=""></div>
												<a href="bookDetail"><img alt="Book"
													<%-- src="${pageContext.request.contextPath}/images/books-media/list-view/book-media-01.jpg" /></a> --%>
                                                         src="${itm.img }"
													style="width: 233px; height: auto;" /></a>
											</div>
											<div class="post-detail">
												<!-- <div class="books-social-sharing">
                                                    <ul>
                                                        <li><a href="#" target="_blank"><i
                                                                    class="fa fa-facebook"></i></a></li>
                                                        <li><a href="#" target="_blank"><i
                                                                    class="fa fa-twitter"></i></a></li>
                                                        <li><a href="#" target="_blank"><i
                                                                    class="fa fa-google-plus"></i></a></li>
                                                        <li><a href="#" target="_blank"><i class="fa fa-rss"></i></a>
                                                        </li>
                                                        <li><a href="#" target="_blank"><i
                                                                    class="fa fa-linkedin"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="optional-links">
                                                    <ul>
                                                        <li>
                                                            <a href="#" target="_blank" data-toggle="blog-tags"
                                                                data-placement="top" title="Add TO CART">
                                                                <i class="fa fa-shopping-cart"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" target="_blank" data-toggle="blog-tags"
                                                                data-placement="top" title="Like">
                                                                <i class="fa fa-heart"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" target="_blank" data-toggle="blog-tags"
                                                                data-placement="top" title="Mail"><i
                                                                    class="fa fa-envelope"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" target="_blank" data-toggle="blog-tags"
                                                                data-placement="top" title="Search">
                                                                <i class="fa fa-search"></i>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" target="_blank" data-toggle="blog-tags"
                                                                data-placement="top" title="Print">
                                                                <i class="fa fa-print"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div> -->
												<header class="entry-header">
													<div class="row">
														<div class="col-sm-6">
															<h3 class="entry-title">
																<a href="bookDetail">${itm.title } </a>
															</h3>
															<ul>
																<li><strong>Author:</strong> ${itm.author }</li>
																<li><strong>ISBN:</strong> ${itm.isbn }</li>
															</ul>
														</div>
														<div class="col-sm-6">
															<ul>
																<li><strong>Publisher:</strong> ${itm.publisher }</li>
																<li><strong>Category:</strong> ${itm.bcategory }</li>
																<!-- <li>
                                                                    <div class="rating">
                                                                        <strong>Rating: </strong>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                    </div>
                                                                </li> -->
															</ul>
														</div>
													</div>
												</header>
												<div class="entry-content">
													<p>${itm.descrip }</p>
												</div>
												<footer class="entry-footer">
													<a class="btn btn-dark-gray" href="bookDetail">Read
														More</a>
												</footer>
											</div>
											<div class="clear"></div>
										</div>
									</article>
								</div>
							</c:forEach>


							<div style="display: block; text-align: center;">
								<c:if test="${paging.startPage != 1 }">
									<a
										href="${pageContext.request.contextPath}/user/BbooklistMain?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
								</c:if>
								<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
									var="p">
									<c:choose>
										<c:when test="${p == paging.nowPage }">
											<b>${p }</b>
										</c:when>
										<c:when test="${p != paging.nowPage }">
											<a
												href="${pageContext.request.contextPath}/user/BbooklistMain?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if test="${paging.endPage != paging.lastPage}">
									<a
										href="${pageContext.request.contextPath}/user/BbooklistMain?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
								</c:if>
							</div>
							<!-- <nav class="navigation pagination text-center">
                                    <h2 class="screen-reader-text">Posts navigation</h2>
                                    <div class="nav-links">
                                        <a class="prev page-numbers" href="#."><i class="fa fa-long-arrow-left"></i>
                                            Previous</a>
                                        <a class="page-numbers" href="#.">1</a>
                                        <span class="page-numbers current">2</span>
                                        <a class="page-numbers" href="#.">3</a>
                                        <a class="page-numbers" href="#.">4</a>
                                        <a class="next page-numbers" href="#.">Next <i
                                                class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </nav> -->
						</div>
						<div class="col-md-3 col-md-pull-9">
							<aside id="secondary" class="sidebar widget-area"
								data-accordion-group>
								<div class="widget widget_related_search open" data-accordion>
									<h4 class="widget-title" data-control>Related Searches</h4>
									<div data-content>
										<div data-accordion>
											<h5 class="widget-sub-title" data-control>Subject</h5>
											<div class="widget_categories" data-content>
												<ul>
													<li><a href="#">Love stories <span>(18)</span></a></li>
													<li><a href="#">Texas <span>(04)</span></a></li>
													<li><a href="#">Rich people <span>(03)</span></a></li>
													<li><a href="#">Humorous stories <span>(02)</span></a></li>
													<li><a href="#">Widows <span>(02)</span></a></li>
													<li><a href="#">Women <span>(11)</span></a></li>
													<li><a href="#">Babysitters <span>(25)</span></a></li>
													<li><a href="#">Law firms <span>(09)</span></a></li>
												</ul>
											</div>
										</div>
										<div data-accordion>
											<h5 class="widget-sub-title" data-control>Authors</h5>
											<div class="widget_categories" data-content>
												<ul>
													<li><a href="#">Love stories <span>(18)</span></a></li>
													<li><a href="#">Texas <span>(04)</span></a></li>
													<li><a href="#">Rich people <span>(03)</span></a></li>
													<li><a href="#">Humorous stories <span>(02)</span></a></li>
													<li><a href="#">Widows <span>(02)</span></a></li>
													<li><a href="#">Women <span>(11)</span></a></li>
													<li><a href="#">Babysitters <span>(25)</span></a></li>
													<li><a href="#">Law firms <span>(09)</span></a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div data-accordion>
											<h5 class="widget-sub-title" data-control>Series</h5>
											<div class="widget_categories" data-content>
												<ul>
													<li><a href="#">Love stories <span>(18)</span></a></li>
													<li><a href="#">Texas <span>(04)</span></a></li>
													<li><a href="#">Rich people <span>(03)</span></a></li>
													<li><a href="#">Humorous stories <span>(02)</span></a></li>
													<li><a href="#">Widows <span>(02)</span></a></li>
													<li><a href="#">Women <span>(11)</span></a></li>
													<li><a href="#">Babysitters <span>(25)</span></a></li>
													<li><a href="#">Law firms <span>(09)</span></a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
										<div data-accordion>
											<h5 class="widget-sub-title" data-control>Other Searches</h5>
											<div class="widget_categories" data-content>
												<ul>
													<li><a href="#">Love stories <span>(18)</span></a></li>
													<li><a href="#">Texas <span>(04)</span></a></li>
													<li><a href="#">Rich people <span>(03)</span></a></li>
													<li><a href="#">Humorous stories <span>(02)</span></a></li>
													<li><a href="#">Widows <span>(02)</span></a></li>
													<li><a href="#">Women <span>(11)</span></a></li>
													<li><a href="#">Babysitters <span>(25)</span></a></li>
													<li><a href="#">Law firms <span>(09)</span></a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="widget widget_narrow_search" data-accordion>
									<h4 class="widget-title" data-control>Narrow your search</h4>
									<div data-content>
										<div data-accordion>
											<h5 class="widget-sub-title" data-control>Type of
												Material</h5>
											<div class="widget_material" data-content>
												<form action="#">
													<label><input type="checkbox" name="material"
														value="books"> Books</label> <label><input
														type="checkbox" name="material" value="electronic" checked>
														Electronic Resources</label> <label><input type="checkbox"
														name="material" value="ebooks"> ebooks</label> <label><input
														type="checkbox" name="material" value="soundrecording"
														checked> Sound Recording</label> <label><input
														type="checkbox" name="material" value="largeprint">
														Large Print</label> <label><input type="checkbox"
														name="material" value="audioebooks" checked> Audio
														eBooks</label>
												</form>
											</div>
										</div>
										<div data-accordion>
											<h5 class="widget-sub-title" data-control>Publishing
												Date</h5>
											<div class="widget widget_material" data-content>
												<form action="#">
													<label><input type="checkbox" name="material"
														value="books"> Books</label> <label><input
														type="checkbox" name="material" value="electronic" checked>
														Electronic Resources</label> <label><input type="checkbox"
														name="material" value="ebooks"> ebooks</label> <label><input
														type="checkbox" name="material" value="soundrecording"
														checked> Sound Recording</label> <label><input
														type="checkbox" name="material" value="largeprint">
														Large Print</label> <label><input type="checkbox"
														name="material" value="audioebooks" checked> Audio
														eBooks</label>
												</form>
												<div class="clearfix"></div>
											</div>
											<div class="clearfix"></div>
										</div>
										<div data-accordion>
											<h5 class="widget-sub-title" data-control>Popularity</h5>
											<div class="widget widget_material" data-content>
												<form action="#">
													<label><input type="checkbox" name="material"
														value="books"> Books</label> <label><input
														type="checkbox" name="material" value="electronic" checked>
														Electronic Resources</label> <label><input type="checkbox"
														name="material" value="ebooks"> ebooks</label> <label><input
														type="checkbox" name="material" value="soundrecording"
														checked> Sound Recording</label> <label><input
														type="checkbox" name="material" value="largeprint">
														Large Print</label> <label><input type="checkbox"
														name="material" value="audioebooks" checked> Audio
														eBooks</label>
												</form>
											</div>
											<div class="clearfix"></div>
										</div>
										<div data-accordion>
											<h5 class="widget-sub-title" data-control>Language</h5>
											<div class="widget widget_material" data-content>
												<form action="#">
													<label><input type="checkbox" name="material"
														value="books"> Books</label> <label><input
														type="checkbox" name="material" value="electronic" checked>
														Electronic Resources</label> <label><input type="checkbox"
														name="material" value="ebooks"> ebooks</label> <label><input
														type="checkbox" name="material" value="soundrecording"
														checked> Sound Recording</label> <label><input
														type="checkbox" name="material" value="largeprint">
														Large Print</label> <label><input type="checkbox"
														name="material" value="audioebooks" checked> Audio
														eBooks</label>
												</form>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<!-- <div class="widget widget_recent_releases">
                                        <h4 class="widget-title">New Releases</h4>
                                        <ul>
                                            <li><a href="#">Books</a></li>
                                            <li><a href="#">eBooks</a></li>
                                            <li><a href="#">DVDS</a></li>
                                            <li><a href="#">Magazines</a></li>
                                            <li><a href="#">Audio</a></li>
                                            <li><a href="#">eAudio</a></li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div> -->
								<div class="widget widget_recent_entries">
									<h4 class="widget-title">On-Order Items</h4>
									<ul>
										<li>
											<figure>
												<img
													src="${pageContext.request.contextPath}/images/order-item-01.jpg"
													alt="product" />
											</figure> <a href="#">The Sonic Boom</a> <span class="price"><strong>Author:</strong>
												F. Scott Fitzgerald</span> <span><strong>ISBN:</strong>
												978158157</span>
											<div class="rating">
												<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
												<span>☆</span>
											</div>
											<div class="clearfix"></div>
										</li>
										<li>
											<figure>
												<img
													src="${pageContext.request.contextPath}/images/order-item-02.jpg"
													alt="product" />
											</figure> <a href="#">The Sonic Boom</a> <span class="price"><strong>Author:</strong>
												F. Scott Fitzgerald</span> <span><strong>ISBN:</strong>
												978158157</span>
											<div class="rating">
												<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
												<span>☆</span>
											</div>
											<div class="clearfix"></div>
										</li>
										<li>
											<figure>
												<img
													src="${pageContext.request.contextPath}/images/order-item-03.jpg"
													alt="product" />
											</figure> <a href="#">The Sonic Boom</a> <span class="price"><strong>Author:</strong>
												F. Scott Fitzgerald</span> <span><strong>ISBN:</strong>
												978158157</span>
											<div class="rating">
												<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
												<span>☆</span>
											</div>
											<div class="clearfix"></div>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
							</aside>
						</div>
					</div>
				</div>
				<br> <br>
				<%-- <jsp:include page="staff-picks.jsp" flush="faluse"/> --%>
				<div style="text-align: right">
					<a class="btn btn-dark-gray" href="hopeBook">Request a wished
						book</a>
				</div>
			</div>
		</main>
	</div>
</div>
<!-- End: Books & Media Section -->