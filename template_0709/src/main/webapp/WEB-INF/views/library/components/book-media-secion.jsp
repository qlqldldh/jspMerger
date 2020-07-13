<!-- Start: Book & Media Section -->
    <div id="content" class="site-content">
        <div id="primary" class="content-area">
            <main id="main" class="site-main">
                <div class="books-media-list">
                    <div class="container">
                        <div class="row">
                            <jsp:include page="search-section.jsp" flush="false"/>
                        </div>
                        <div class="row">
                            <div class="col-md-9 col-md-push-3">
                                <div class="filter-options margin-list">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4">
                                            <select name="orderby">
                                                <option selected="selected">Default sorting</option>
                                                <option>Sort by popularity</option>
                                                <option>Sort by rating</option>
                                                <option>Sort by newness</option>
                                                <option>Sort by price</option>
                                            </select>
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <div class="filter-result">Showing items 1 to 9 of 19 total</div>
                                        </div>
                                        <div class="col-md-3 col-sm-3 pull-right">
                                            <div class="filter-toggle">
                                                <a href="books-media-gird-view-v1.html"><i
                                                        class="glyphicon glyphicon-th-large"></i></a>
                                                <a href="books-media-list-view.html" class="active"><i
                                                        class="glyphicon glyphicon-th-list"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="books-list">
                                    <article>
                                        <div class="single-book-box">
                                            <div class="post-thumbnail">
                                                <div class="book-list-icon yellow-icon"></div>
                                                <a href="books-media-detail-v2.html"><img alt="Book"
                                                        src="${pageContext.request.contextPath}/images/books-media/list-view/book-media-01.jpg" /></a>
                                            </div>
                                            <div class="post-detail">
                                                <div class="books-social-sharing">
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
                                                </div>
                                                <header class="entry-header">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <h3 class="entry-title">
                                                                <a href="books-media-detail-v2.html">The Great
                                                                    Gatsby</a>
                                                            </h3>
                                                            <ul>
                                                                <li><strong>Author:</strong> F. Scott Fitzgerald</li>
                                                                <li><strong>ISBN:</strong> 9781581573268</li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <ul>
                                                                <li><strong>Edition:</strong> First editio</li>
                                                                <li><strong>Local Availability:</strong> 0 (of 1)</li>
                                                                <li>
                                                                    <div class="rating">
                                                                        <strong>Rating: </strong>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </header>
                                                <div class="entry-content">
                                                    <p>There are many variations of passages of Lorem Ipsum available,
                                                        but the majority have suffered alteration in some form, by
                                                        injected humour, or randomised words which don't look even
                                                        slightly believable.</p>
                                                </div>
                                                <footer class="entry-footer">
                                                    <a class="btn btn-dark-gray" href="books-media-detail-v2.html">Read
                                                        More</a>
                                                </footer>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </article>
                                    <article>
                                        <div class="single-book-box">
                                            <div class="post-thumbnail">
                                                <div class="book-list-icon light-green-icon"></div>
                                                <a href="books-media-detail-v2.html"><img alt="Book"
                                                        src="${pageContext.request.contextPath}/images/books-media/list-view/book-media-02.jpg" /></a>
                                            </div>
                                            <div class="post-detail">
                                                <div class="books-social-sharing">
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
                                                </div>
                                                <header class="entry-header">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <h3 class="entry-title"><a
                                                                    href="books-media-detail-v1.html">The Great
                                                                    Gatsby</a></h3>
                                                            <ul>
                                                                <li><strong>Author:</strong> F. Scott Fitzgerald</li>
                                                                <li><strong>ISBN:</strong> 9781581573268</li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <ul>
                                                                <li><strong>Edition:</strong> First editio</li>
                                                                <li><strong>Local Availability:</strong> 0 (of 1)</li>
                                                                <li>
                                                                    <div class="rating">
                                                                        <strong>Rating: </strong>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </header>
                                                <div class="entry-content">
                                                    <p>There are many variations of passages of Lorem Ipsum available,
                                                        but the majority have suffered alteration in some form, by
                                                        injected humour, or randomised words which don't look even
                                                        slightly believable.</p>
                                                </div>
                                                <footer class="entry-footer">
                                                    <a class="btn btn-dark-gray" href="books-media-detail-v2.html">Read
                                                        More</a>
                                                </footer>
                                            </div>
                                        </div>
                                    </article>
                                    <article>
                                        <div class="single-book-box">
                                            <div class="post-thumbnail">
                                                <div class="book-list-icon blue-icon"></div>
                                                <a href="books-media-detail-v2.html"><img alt="Book"
                                                        src="${pageContext.request.contextPath}/images/books-media/list-view/book-media-03.jpg" /></a>
                                            </div>
                                            <div class="post-detail">
                                                <div class="books-social-sharing">
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
                                                </div>
                                                <header class="entry-header">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <h3 class="entry-title"><a
                                                                    href="books-media-detail-v1.html">The Great
                                                                    Gatsby</a></h3>
                                                            <ul>
                                                                <li><strong>Author:</strong> F. Scott Fitzgerald</li>
                                                                <li><strong>ISBN:</strong> 9781581573268</li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <ul>
                                                                <li><strong>Edition:</strong> First editio</li>
                                                                <li><strong>Local Availability:</strong> 0 (of 1)</li>
                                                                <li>
                                                                    <div class="rating">
                                                                        <strong>Rating: </strong>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </header>
                                                <div class="entry-content">
                                                    <p>There are many variations of passages of Lorem Ipsum available,
                                                        but the majority have suffered alteration in some form, by
                                                        injected humour, or randomised words which don't look even
                                                        slightly believable.</p>
                                                </div>
                                                <footer class="entry-footer">
                                                    <a class="btn btn-dark-gray" href="books-media-detail-v1.html">Read
                                                        More</a>
                                                </footer>
                                            </div>
                                        </div>
                                    </article>
                                    <article>
                                        <div class="single-book-box">
                                            <div class="post-thumbnail">
                                                <div class="book-list-icon red-icon"></div>
                                                <a href="books-media-detail-v1.html"><img alt="Book"
                                                        src="${pageContext.request.contextPath}/images/books-media/list-view/book-media-04.jpg" /></a>
                                            </div>
                                            <div class="post-detail">
                                                <div class="books-social-sharing">
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
                                                </div>
                                                <header class="entry-header">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <h3 class="entry-title"><a
                                                                    href="books-media-detail-v1.html">The Great
                                                                    Gatsby</a></h3>
                                                            <ul>
                                                                <li><strong>Author:</strong> F. Scott Fitzgerald</li>
                                                                <li><strong>ISBN:</strong> 9781581573268</li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <ul>
                                                                <li><strong>Edition:</strong> First editio</li>
                                                                <li><strong>Local Availability:</strong> 0 (of 1)</li>
                                                                <li>
                                                                    <div class="rating">
                                                                        <strong>Rating: </strong>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </header>
                                                <div class="entry-content">
                                                    <p>There are many variations of passages of Lorem Ipsum available,
                                                        but the majority have suffered alteration in some form, by
                                                        injected humour, or randomised words which don't look even
                                                        slightly believable.</p>
                                                </div>
                                                <footer class="entry-footer">
                                                    <a class="btn btn-dark-gray" href="books-media-detail-v1.html">Read
                                                        More</a>
                                                </footer>
                                            </div>
                                        </div>
                                    </article>
                                    <article>
                                        <div class="single-book-box">
                                            <div class="post-thumbnail">
                                                <div class="book-list-icon red-icon"></div>
                                                <a href="books-media-detail-v1.html"><img alt="Book"
                                                        src="${pageContext.request.contextPath}/images/books-media/list-view/book-media-05.jpg" /></a>
                                            </div>
                                            <div class="post-detail">
                                                <div class="books-social-sharing">
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
                                                </div>
                                                <header class="entry-header">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <h3 class="entry-title"><a
                                                                    href="books-media-detail-v1.html">The Great
                                                                    Gatsby</a></h3>
                                                            <ul>
                                                                <li><strong>Author:</strong> F. Scott Fitzgerald</li>
                                                                <li><strong>ISBN:</strong> 9781581573268</li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <ul>
                                                                <li><strong>Edition:</strong> First editio</li>
                                                                <li><strong>Local Availability:</strong> 0 (of 1)</li>
                                                                <li>
                                                                    <div class="rating">
                                                                        <strong>Rating: </strong>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </header>
                                                <div class="entry-content">
                                                    <p>There are many variations of passages of Lorem Ipsum available,
                                                        but the majority have suffered alteration in some form, by
                                                        injected humour, or randomised words which don't look even
                                                        slightly believable.</p>
                                                </div>
                                                <footer class="entry-footer">
                                                    <a class="btn btn-dark-gray" href="books-media-detail-v1.html">Read
                                                        More</a>
                                                </footer>
                                            </div>
                                        </div>
                                    </article>
                                    <article>
                                        <div class="single-book-box">
                                            <div class="post-thumbnail">
                                                <div class="book-list-icon green-icon"></div>
                                                <a href="books-media-detail-v1.html"><img alt="Book"
                                                        src="${pageContext.request.contextPath}/images/books-media/list-view/book-media-06.jpg" /></a>
                                            </div>
                                            <div class="post-detail">
                                                <div class="books-social-sharing">
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
                                                </div>
                                                <header class="entry-header">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <h3 class="entry-title"><a
                                                                    href="books-media-detail-v1.html">The Great
                                                                    Gatsby</a></h3>
                                                            <ul>
                                                                <li><strong>Author:</strong> F. Scott Fitzgerald</li>
                                                                <li><strong>ISBN:</strong> 9781581573268</li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <ul>
                                                                <li><strong>Edition:</strong> First editio</li>
                                                                <li><strong>Local Availability:</strong> 0 (of 1)</li>
                                                                <li>
                                                                    <div class="rating">
                                                                        <strong>Rating: </strong>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                        <span>☆</span>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </header>
                                                <div class="entry-content">
                                                    <p>There are many variations of passages of Lorem Ipsum available,
                                                        but the majority have suffered alteration in some form, by
                                                        injected humour, or randomised words which don't look even
                                                        slightly believable.</p>
                                                </div>
                                                <footer class="entry-footer">
                                                    <a class="btn btn-dark-gray" href="books-media-detail-v1.html">Read
                                                        More</a>
                                                </footer>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <nav class="navigation pagination text-center">
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
                                </nav>
                            </div>
                            <div class="col-md-3 col-md-pull-9">
                                <aside id="secondary" class="sidebar widget-area" data-accordion-group>
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
                                                <h5 class="widget-sub-title" data-control>Type of Material</h5>
                                                <div class="widget_material" data-content>
                                                    <form action="#">
                                                        <label><input type="checkbox" name="material" value="books">
                                                            Books</label>
                                                        <label><input type="checkbox" name="material" value="electronic"
                                                                checked> Electronic Resources</label>
                                                        <label><input type="checkbox" name="material" value="ebooks">
                                                            ebooks</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="soundrecording" checked> Sound Recording</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="largeprint"> Large Print</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="audioebooks" checked> Audio eBooks</label>
                                                    </form>
                                                </div>
                                            </div>
                                            <div data-accordion>
                                                <h5 class="widget-sub-title" data-control>Publishing Date </h5>
                                                <div class="widget widget_material" data-content>
                                                    <form action="#">
                                                        <label><input type="checkbox" name="material" value="books">
                                                            Books</label>
                                                        <label><input type="checkbox" name="material" value="electronic"
                                                                checked> Electronic Resources</label>
                                                        <label><input type="checkbox" name="material" value="ebooks">
                                                            ebooks</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="soundrecording" checked> Sound Recording</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="largeprint"> Large Print</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="audioebooks" checked> Audio eBooks</label>
                                                    </form>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div data-accordion>
                                                <h5 class="widget-sub-title" data-control>Popularity </h5>
                                                <div class="widget widget_material" data-content>
                                                    <form action="#">
                                                        <label><input type="checkbox" name="material" value="books">
                                                            Books</label>
                                                        <label><input type="checkbox" name="material" value="electronic"
                                                                checked> Electronic Resources</label>
                                                        <label><input type="checkbox" name="material" value="ebooks">
                                                            ebooks</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="soundrecording" checked> Sound Recording</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="largeprint"> Large Print</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="audioebooks" checked> Audio eBooks</label>
                                                    </form>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div data-accordion>
                                                <h5 class="widget-sub-title" data-control>Language </h5>
                                                <div class="widget widget_material" data-content>
                                                    <form action="#">
                                                        <label><input type="checkbox" name="material" value="books">
                                                            Books</label>
                                                        <label><input type="checkbox" name="material" value="electronic"
                                                                checked> Electronic Resources</label>
                                                        <label><input type="checkbox" name="material" value="ebooks">
                                                            ebooks</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="soundrecording" checked> Sound Recording</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="largeprint"> Large Print</label>
                                                        <label><input type="checkbox" name="material"
                                                                value="audioebooks" checked> Audio eBooks</label>
                                                    </form>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="widget widget_recent_releases">
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
                                    </div>
                                    <div class="widget widget_recent_entries">
                                        <h4 class="widget-title">On-Order Items</h4>
                                        <ul>
                                            <li>
                                                <figure>
                                                    <img src="${pageContext.request.contextPath}/images/order-item-01.jpg" alt="product" />
                                                </figure>
                                                <a href="#">The Sonic Boom</a>
                                                <span class="price"><strong>Author:</strong> F. Scott Fitzgerald</span>
                                                <span><strong>ISBN:</strong> 978158157</span>
                                                <div class="rating">
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </li>
                                            <li>
                                                <figure>
                                                    <img src="${pageContext.request.contextPath}/images/order-item-02.jpg" alt="product" />
                                                </figure>
                                                <a href="#">The Sonic Boom</a>
                                                <span class="price"><strong>Author:</strong> F. Scott Fitzgerald</span>
                                                <span><strong>ISBN:</strong> 978158157</span>
                                                <div class="rating">
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </li>
                                            <li>
                                                <figure>
                                                    <img src="${pageContext.request.contextPath}/images/order-item-03.jpg" alt="product" />
                                                </figure>
                                                <a href="#">The Sonic Boom</a>
                                                <span class="price"><strong>Author:</strong> F. Scott Fitzgerald</span>
                                                <span><strong>ISBN:</strong> 978158157</span>
                                                <div class="rating">
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                    <span>☆</span>
                                                    <span>☆</span>
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

                    <jsp:include page="staff-picks.jsp" flush="faluse"/>
                </div>
            </main>
        </div>
    </div>
    <!-- End: Books & Media Section -->