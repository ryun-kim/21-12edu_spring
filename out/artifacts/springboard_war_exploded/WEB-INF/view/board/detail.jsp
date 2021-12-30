<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><c:out value="${requestScope.data.title}"/> </title>
</head>
<body>
    <div id="btnContainer" data-iboard="${requestScope.data.iboard}">
        <a href="/board/mod?iboard=${requestScope.data.iboard}"><button>수정</button></a>
        <button id="btnDel">삭제</button>
    </div>
    <div>번호 : <c:out value="${requestScope.data.iboard}"/> </div>
    <div>제목 : <c:out value="${requestScope.data.title}"/> </div>
    <div>내용 : <c:out value="${requestScope.data.ctnt}"/> </div>
    <div>조회수 : <c:out value="${requestScope.data.hits}"/> </div>
    <div>작성일시 : <c:out value="${requestScope.data.rdt}"/> </div>
    <div>수정일시 : <c:out value="${requestScope.data.mdt}"/> </div>
    <script src="/res/js/board/detail.js"></script>
</body>
</html>