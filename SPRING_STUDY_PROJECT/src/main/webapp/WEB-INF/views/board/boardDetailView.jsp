<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table border-top">
    <tr>
        <th width="15%" class="bg-light">제목</th>
        <td colspan="3">${board.boardTitle}</td>
    </tr>
    <tr>
        <th class="bg-light">작성자</th>
        <td>${board.boardWriter}</td>
        <th class="bg-light">작성일</th>
        <td>${board.createDate}</td>
    </tr>
    
    <c:forEach var="img" items="${board.imgList}" varStatus="vs">
        <tr>
            <th class="bg-light">이미지${vs.count}</th>
            <td colspan="3">
                <img src="${contextPath}/resources/upload/board/${img.changeName}" 
                     alt="첨부이미지${vs.count}" 
                     style="max-width: 300px; margin: 10px 0;">
            </td>
        </tr>
    </c:forEach>

    <tr>
        <th class="bg-light">내용</th>
        <td colspan="2" height="200">${board.boardContent}</td>
        <td class="bg-light text-center">조회수: ${board.count}</td>
    </tr>
</table>