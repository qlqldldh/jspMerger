<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<jsp:include page="common-components/header.jsp" flush="false" />
<style>
	h2 {
		text-align: center;
	}
	table {
		width: 100%;
	}
	#outter {
		display: block;
		width: 15%;
		margin: auto;
	}
	a {
		text-decoration: none;
	}
</style>

<script>
 	function selChange() {
		var sel = document.getElementById("cntPerPage").value;
		location.href="BbooklistMain?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
/* 	  function selChange(){
          var yourTestSelect = document.getElementById('cntPerPage');
          console.log(“2");
          var sel = document.getElementById('cntPerPage').value;
          location.href='BbooklistMain?nowPage=${paging.nowPage}&cntPerPage='+sel;
      }*/
</script>

<body>

	<jsp:include page="common-components/header-section.jsp" flush="false" />
	<jsp:include page="common-components/page-banner.jsp" flush="false" />


	<jsp:include page="components/book-media-secion.jsp" flush="false" />

	<%-- <jsp:include page="common-components/social-network.jsp" flush="false" /> --%>

	<jsp:include page="common-components/footer.jsp" flush="false" />

	<jsp:include page="common-components/footer-javascript.jsp"
		flush="false" />

</body>


</html>