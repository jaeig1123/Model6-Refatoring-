<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">

<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
		
	<c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
			�� ����
	</c:if>
	<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
			<a href="listProduct.do?currentPage=${ resultPage.currentPage-1}&
						<c:set var="menu" value="menu" scope="request"/>
						<c:choose>
						<c:when test="${menu =='manage'}">
						menu=manage
						</c:when>
						<c:otherwise>
						menu=search
						</c:otherwise>
						</c:choose>">�� ����</a>
	</c:if>
	
	<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
		<a href="listProduct.do?currentPage=${ i }&
						<c:set var="menu" value="menu" scope="request"/>
						<c:choose>
						<c:when test="${menu =='manage'}">
						menu=manage
						</c:when>
						<c:otherwise>
						menu=search
						</c:otherwise>
						</c:choose>">${ i }</a>
	</c:forEach>
	
	<c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
			���� ��
	</c:if>
	<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
			<a href="listProduct.do?currentPage=${resultPage.endUnitPage+1}&
					<c:choose>
					<c:when test="${menu =='manage'}">
					menu=manage
					</c:when>
					<c:otherwise>
					menu=search
					</c:otherwise>
					</c:choose>">���� ��</a>
	</c:if>