<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <main>
        <div class="container-fluid">
            <h1 class="mt-4">News List</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="<c:url value='/admin-home'/>">Dashboard</a></li>
                <li class="breadcrumb-item active"><a href="<c:url value='/admin-news?type=list'/>">News List</a></li>
                <li class="breadcrumb-item active">Detail</li>
            </ol>
            <c:if test="${not empty messageResponse}">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="alert alert-${alert}">
                            ${messageResponse}
                        </div>
                    </div>
                </div>
            </c:if>
            <div class="card mb-4">
                <div class="col-lg-12">

                    <!-- Title -->
                    <h1 class="mt-4">${model.title}</h1>

                    <!-- Author -->
                    <p class="lead">
                        by
                        <a href="#">${model.createdBy}</a>
                    </p>

                    <hr>

                    <!-- Date/Time -->
                    <p>Posted on ${model.createdDate}</p>

                    <hr>

                    <!-- Preview Image -->
                    <img class="img-fluid rounded" src="http://placehold.it/900x300" alt="">

                    <hr>

                    <!-- Post Content -->
                    ${model.createdBy}

                    <hr>

                   
            </div>
        </div>
    </main>
</body>

</html>