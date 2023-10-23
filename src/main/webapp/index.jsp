<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<fmt:setBundle basename="message.commons">
<c:url var="loginUrl" value="/member/login" />
<c:url var="joinUrl" value="/member/join" />
<c:url var="logoutUrl" value="/member/logout" />
<c:url var="mypageUrl" value="/member/mypage" />



<layout:main title="메인페이지">
    <c:if test="${sessionScope.member == null}"> <%-- 미로그인 상태 --%>
        <a href ="${loginUrl}">로그인</a>
         <a href ="${joinUrl}">회원가입</a>
    </c:if>
    <c:if test="${sessionScope.member !== null}"> <%-- 로그인 상태 --%>
            <fmt:message key="LOGIN_MSG">
                <fmt:param>${sessionScope.member.userNm}</fmt:param>
                <fmt:param>${sessionScope.member.userID}</fmt:param>
             </fmt:message>

            <a href ="${logoutUrl}">로그아웃</a>
            <a href ="${mypageUrl}">마이페이지</a>
    </c:if>

</layout:main>

