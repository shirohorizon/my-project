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
            <h1 class="mt-4">Category List</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                <li class="breadcrumb-item active">Category List</li>
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
                <div class="card-header"><i class="fas fa-table mr-1"></i>DataTable Example</div>
                <div class="card-body">
                    <div class="table-responsive">
                        <div style="float: right; margin-top: 15px;">
                            <button style="float:right; margin-left: 5px;" id="btnDelete" type="button"
                                class="dt-button buttons-html5 btn btn-white btn-danger btn-bold" data-toggle="tooltip"
                                title='Xóa bài viết'>
                                <span>
                                    <i class="fas fa-trash-alt bigger-110 pink"></i>
                                </span>
                            </button>
                            <a style="float:right;" flag="info"
                                class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
                                data-toggle="tooltip" title='Thêm bài viết'
                                href='<c:url value="/admin-news?type=edit"/>'>
                                <span>
                                    <i class="fa fa-plus-circle bigger-110 purple"></i>
                                </span>
                            </a>
                        </div>

                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th><i class="fas fa-check-square"></i></th>
                                    <th>Name</th>
                                    <th>Code</th>
                                    <th>Createdby</th>
                                    <th>Createddate</th>
                                    <th>Modifiedby</th>
                                    <th>Modifieddate</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th><i class="fas fa-check-square"></i></th>
                                    <th>Name</th>
                                    <th>Code</th>
                                    <th>Createdby</th>
                                    <th>Createddate</th>
                                    <th>Modifiedby</th>
                                    <th>Modifieddate</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <c:forEach var="item" items="${model.listResult}">
                                    <tr>
                                        <td><input type="checkbox" id="checkbox_${item.id}" value="${item.id}"></td>
                                        <td>${item.name}</td>
                                        <td>${item.code}</td>
                                        <td>${item.createdBy}</td>
                                        <td>${item.createdDate}</td>
                                        <td>${item.modifiedBy}</td>
                                        <td>${item.modifiedDate}</td>
                                        <td>
                                            <c:url var="editURL" value="/admin-news">
                                                <c:param name="type" value="edit" />
                                                <c:param name="id" value="${item.id}" />
                                            </c:url>
                                            <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                                title="Cập nhật bài viết" href='${editURL}'>
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            <c:url var="detailURL" value="/admin-news">
                                                <c:param name="type" value="detail" />
                                                <c:param name="id" value="${item.id}" />
                                            </c:url>
                                            <a class="btn btn-sm btn-success btn-edit" data-toggle="tooltip"
                                                title="Xem chi tiết" href='${detailURL}'>
                                                <i class="fas fa-angle-double-right"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>

</html>