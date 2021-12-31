<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
</head>
<body>
    <div>
        <form action="/user/join" method="post">
            <div><input type="text" name="uid" placeholder="ID" required></div>
            <div><input type="password" name="upw" placeholder="PassWord"> </div>
            <div><input type="text" name="nm" placeholder="Your Name"></div>
            <div>
                <label>female<input type="radio" value="2" name="gender" checked></label>
                <label>male<input type="radio" value="1" name="gender"></label>
            </div>
            <div>
                <input type="submit" value="join">
                <input type="reset" value="reset">
            </div>
        </form>
    </div>
</body>
</html>
