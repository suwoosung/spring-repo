<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container my-5">
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <c:forEach var="b" items="${list}">
            <div class="col">
                <div class="card h-100 shadow-sm border-0">
                    <div class="card-img-top text-center p-3 bg-light">
                        <c:choose>
                            <c:when test="${not empty b.changeName}">
                                <img src="${contextPath}/resources/upload/board/${b.changeName}" class="img-fluid" style="height:200px; object-fit:contain;">
                            </c:when>
                            <c:otherwise>
                                <img src="${contextPath}/resources/images/java.png" class="img-fluid" style="height:200px;">
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title fw-bold">${b.boardTitle}</h5>
                        <p class="card-text text-muted small text-truncate">${b.boardContent}</p>
                        <div class="d-flex justify-content-between mt-3 text-secondary" style="font-size: 0.75rem;">
                            <span>작성자: ${b.boardWriter}</span>
                            <span>작성일: ${b.createDate}</span>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>