<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>

<html>
<head>
    <title>
        회원가입
    </title>
    <link rel="stylesheet" type="text/css" href="css/style3.css">
</head>
<body style = "background-image:url(images/black1xnaud.jpg)">
    <a href="black.html"><img class= i1 src="images/log.jpg" ></a>
    <h1>회원가입</h1>
    <form method=get action="#">
        <table>
            <tr>
                <td colspan="2">아이디</td>
            </tr>
            <tr>
                <td><input type=text size=60></td><td><input type=button value=중복확인></td>
            </tr>
            <tr>
                <td colspan="2">비밀번호</td>
            </tr>
            <tr>
                <td colspan="2"><input type=password size=60 ></td>
            </tr>
            <tr>
                <td colspan="2">비밀번호 확인</td>
            </tr>
            <tr>
                <td colspan="2"><input type=password size=60 ></td>
            </tr>
            <tr>
                <td colspan="2">이름</td>
            </tr>
            <tr>
                <td colspan="2"><input type=text size=60 name=name ></td>
            </tr>
            <tr>
                <td colspan="2">나이</td>
            </tr>
            <tr>
                <td colspan="2"><input type=text size=60></td>
            </tr>
            <tr>
                <td colspan="2">번호</td>
            </tr>
            <tr>
                <td><input type=text size=60
                    placeholder ="000-0000-0000" name =tel
                    pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"></td><td><input type=button value="인증번호 요청"></th></td>
            </tr>
            <tr>
                <td colspan="2">이메일 주소</td>
            </tr>
            <tr>
                <td colspan="2"><input type=text size=60 ></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="회원가입"></td>
            </tr>


        </table>

      </form>


</body>
</html>
