<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-news"/>
<c:url var ="NewURL" value="/admin-news"/>
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
            	<c:if test="${not empty model.id}">
                	<li class="breadcrumb-item active">Edit</li>                            
                </c:if>
                <c:if test="${empty model.id}">
                     <li class="breadcrumb-item active">Add</li>                       
                </c:if>
            	
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
                <div class="card-header"><i class="fas fa-plus-square mr-1"></i>Form Table</div>
                <div class="card-body">
                    <div class="table-responsive">
                        <div style="float: right; margin-top: 15px;">
                            <form id="formSubmit">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right">Title</label>
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control" id="title" name="title"
                                                value="${model.title}" />
                                        </div>
                                    </div>
                                    
                                    <label class="col-sm-3 control-label no-padding-right">Category</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" id="categoryCode" name="categoryCode">
                                            <c:if test="${empty model.categoryCode}">
                                                <option value="">Chọn loại bài viết</option>
                                                <c:forEach var="item" items="${categories}">
                                                    <option value="${item.code}">${item.name}</option>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${not empty model.categoryCode}">
                                                <option value="">Chọn loại bài viết</option>
                                                <c:forEach var="item" items="${categories}">
                                                    <option value="${item.code}" 
                                                    <c:if test="${item.code == model.categoryCode}">selected="selected"</c:if>>
                                            ${item.name}
                                            </option>
                                            </c:forEach>
                                            </c:if>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right">Thumbnail</label>
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" id="thumbnail" name="thumbnail"
                                            value="${model.thumbnail}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right">ShortDescription</label>
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" id="shortDescription"
                                            name="shortDescription" value="${model.shortDescription}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label no-padding-right">Content</label>
                                    <div class="col-sm-12">
                                        <textarea rows="" cols="" id="content" name="content"
                                            style="width: 820px;height: 175px">${model.content}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div style="text-align: right;" class="col-sm-12">
                                        <c:if test="${not empty model.id}">
                                            <input type="button" class="btn btn-white btn-success btn-bold"
                                                value="Cập nhật bài viết" id="btnAddOrUpdateNew" />
                                        </c:if>
                                        <c:if test="${empty model.id}">
                                            <input type="button" class="btn btn-white btn-success btn-bold"
                                                value="Thêm bài viết" id="btnAddOrUpdateNew" />
                                        </c:if>
                                    </div>
                                </div>
                                <input type="hidden" value="${model.id}" id="id" name="id" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </main>
</body>

</html>