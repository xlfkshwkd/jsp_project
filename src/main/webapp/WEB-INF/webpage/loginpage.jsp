<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<c:uri var="action" value="/webpage/mainpage.jsp" />

<html>
<head>
    <title>
        login
    </title>
    <link rel="stylesheet" type="text/css" href="css/style2.css">

</head>
<body style = "background-image:url(images/black1xnaud.jpg)">
    <a href="black.html"><img class= i1 src="images/log.jpg" ></a>
     <h1>ETERNAL--RETURN</h1>
    <form method="get" action="#">
        <table>
            <tr>
                <td><input type=text name=id placeholder="아이디"></td>
            </tr>
            <tr>
                <td><input type=password name=pw placeholder="비밀번호"></td>
            </tr>
            <tr>
                <th>
                    <input type="submit"  value=로그인>
                </th>
            </tr>
            <tr>

                <td class=td2><span>아이디 찾기</span><span>비밀번호 찾기</span>
                    <span><a href="black3.html">회원가입</a></span>
                </td>
                </tr>
		<tr><td class=td2>
            <span><img class ="logo2" src="images/login-2.png">
            </span></td> </table>
    </form>

</body>
</html>


