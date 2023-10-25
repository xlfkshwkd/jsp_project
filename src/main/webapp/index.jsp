<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<fmt:setBundle basename="messages.commons" />
<c:url var="loginUrl" value="/member/login" />
<c:url var="joinUrl" value="/member/join" />
<c:url var="logoutUrl" value="/member/logout" />
<c:url var="mypageUrl" value="/mypage" />

<layout:main title="이터널리턴..">
<head>
    <link rel="stylesheet" type="text/css" href="templates/member/css/style.css">
    <script src ="templates/member/js/main.js" alt="베너 사진"></script>
</head>
<body style = "background-image:url(images/black1xnaud.jpg)">
    <div class=d1>
        <div class=d2>
            <div class="d21"><a href=#>홈</a></div>
            <div class="d22"><a href=#>캐릭터</a></div>
            <div class="d23"><a href=#>공략/루트</a></div>
            <div class="d23"><a href=# target="_self">게임소개</a></div>

             <c:if test="${sessionScope.member == null}"> <%-- 미 로그인 상태 --%>
                <div class=d24><a href="${loginUrl}">로그인</a>< /div>
                <div class=d25><a href="${joinUrl}">회원가입</a> </div>
             </c:if>
                <c:if test="${sessionScope.member != null}"> <%-- 로그인 상태 --%>
                    <fmt:message key="LOGIN_MSG">
                        <fmt:param>${sessionScope.member.userNm}</fmt:param>
                        <fmt:param>${sessionScope.member.userId}</fmt:param>
                    </fmt:message>
               <div class=d24><a href="${logoutUrl}">로그아웃</a></div>
                <div class=d25><a href="${mypageUrl}">마이페이지</a></div>
                </c:if>

            </div>
          <a href="black.html"><img class= i1 src="images/log.jpg" ></a>
        </div>
        <div>
             <img class= i2 src="images/black1.jpg" >
             <a href="https://playeternalreturn.com/main" target="_blank">
                <img class= i3 src="images/patch.png"  ></a>
             <a href="https://www.youtube.com/watch?v=3pJepC-QPCM"  target="_blank">
                <img class= i4 src="images/thf.png" ></a>
             <a href="https://www.youtube.com/watch?v=QQSId9Zu1HY&feature=youtu.be"  target="_blank">
                <img class= i5 src="images/mu.png" ></a>
             <a href="https://steamcommunity.com/games/1049590/announcements/detail/2935744583748883519/?l=korean"  target="_blank">
                <img class= i6 src="images/stop.png" ></a>
        </div>
    </div>
</body>
<footer></footer>

</layout:main>
