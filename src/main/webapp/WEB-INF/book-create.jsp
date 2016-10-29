<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/include/header.jsp" %>
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<c:url var="createBookUrl" value="/book/save"/>

<div class="container">

    <h1>Create book</h1>

    <div class="row">
        <form action="${createBookUrl}" method="post" role="form" class="form-horizontal">
            <input type="hidden" name="id" value="${book.id}"/>
            <div class="form-group">
                <label class="control-label col-sm-2" for="author">Author:</label>
                <div class="col-sm-6">
                    <input value="${book.author}" name="author" type="text" id="author" class="form-control" placeholder="Enter author" autofocus>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="title">Title:</label>
                <div class="col-sm-6">
                    <input value="${book.title}" name="title" type="text" id="title" class="form-control" placeholder="Enter title">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="available">Availabilty:</label>
                <div class="col-sm-6">
                    <input value="${book.available}" name="available" type="number" id="available" class="form-control" placeholder="Enter available">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-6">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a href="${booksUrl}" class="btn btn-danger">Cancel</a>
                </div>
            </div>
        </form>
    </div>

</div>

<%@ include file="/WEB-INF/include/footer.jsp" %>