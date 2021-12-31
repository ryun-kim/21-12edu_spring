<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
</head>
<body>
    <h1>로그인</h1>

    <div>
        <form action="/user/login" method="post">
            <div><input type="text" name="uid" placeholder="Your ID"></div>
            <div><input type="password" name="upw" placeholder="Your PassWord"></div>
            <div><input type="submit" value="Login"></div>
        </form>
    </div>
    <div>
        <a href="/user/join"><button>회원가입</button></a>
    </div>
</body>
</html>
