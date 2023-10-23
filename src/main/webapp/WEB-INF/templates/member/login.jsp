<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<c:url var="action" value="/member/login" />
<head>
    <link rel="stylesheet" type="text/css" href="css/style2.css">
</head>

<layout:main title="로그인">
<body style = "background-image:url(images/blackground.jpg)">
    <a href="black.html"><img class= i1 src="images/log.jpg" ></a>
     <h1>ETERNAL--RETURN</h1>
   <form method="post" action="${action}" >
        <table>
            <tr>
                <td><input type= "text" name=id placeholder="아이디"
                name="userId"
                ></td>
            </tr>
            <tr>
                <td><input type= "password" name=pw placeholder="비밀번호"
                name="userPw"
                ></td>
            </tr>
            <tr>
                <th>
                    <input type="submit" value=로그인>
                </th>
            </tr>
            <tr>
                <td class=td2><span>아이디 찾기</span>
                                <span>비밀번호 찾기</span>
                    <span><a href="login.jsp">회원가입</a></span>
                </td>
            </tr>

		<tr><td class=td2>
             <div>
                 <input type="checkbox" name="saveId" value="true" id="saveId"${cookie.saveId == null? '':' checked'}>
                 <label for="saveId">아이디 저장</label>
                 </div>
            </td>
            </table>
    </form>
</body>
</layout:main>



