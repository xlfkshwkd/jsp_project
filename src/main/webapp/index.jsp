<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<c:url var="action" value="/member/join" />

<layout:main title="메인페이지">
    <c:if test="${sessionScope.member == null}"> <%-- 미로그인 상태 --%>

    </c:if>
    <c:if test="${sessionScope.member !== null}"> <%-- 로그인 상태 --%>

    </c:if>

</layout:main>

