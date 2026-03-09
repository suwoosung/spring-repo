<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .navbar-kh {
            background-color: #1a4cd3; /* 이미지의 진한 파란색 */
            padding: 10px 50px;
        }
        .navbar-brand, .nav-link {
            color: white !important;
            font-weight: bold;
        }
        .profile-img {
            width: 35px;
            height: 35px;
            border-radius: 50%;
            margin-right: 10px;
        }
        .user-info {
            color: white;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-kh mb-4">
        <div class="container-fluid">
            <a class="navbar-brand" href="${contextPath}">KH 자유게시판</a>
            
            <div class="ms-auto d-flex align-items-center">
                <c:if test="${not empty loginUser}">
                    <img src="${contextPath}/resources/images/profile.png" class="profile-img" alt="profile">
                    <span class="user-info">KH 수강생</span>
                    <a href="${contextPath}/member/logout" class="btn btn-sm btn-outline-light ms-3">로그아웃</a>
                </c:if>
                <c:if test="${empty loginUser}">
                    <a href="${contextPath}/member/login" class="btn btn-sm btn-outline-light">로그인</a>
                </c:if>
            </div>
        </div>
    </nav>