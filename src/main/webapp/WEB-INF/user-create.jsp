<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/include/header.jsp" %>
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<c:url value="/create-user" var="createUserURL"/>

<div class="container">

    <h1>Create user</h1>

    <div class="row">
        <form action="${createUserURL}" method="post" role="form" class="form-horizontal">

            <div class="form-group">
                <label class="control-label col-sm-2" for="firstName">First name:</label>
                <div class="col-sm-6">
                    <input name="firstName" type="text" id="firstName" class="form-control" placeholder="Enter first name" autofocus>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="lastName">Last name:</label>
                <div class="col-sm-6">
                    <input name="lastName" type="text" id="lastName" class="form-control" placeholder="Enter last name">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-6">
                    <input name="email" type="email" id="email" class="form-control" placeholder="Enter email">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="password">Password:</label>
                <div class="col-sm-6">
                    <input name="password" type="password" id="password" class="form-control" placeholder="Enter password">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-6">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a href="#" class="btn btn-danger">Cancel</a>
                </div>
            </div>

        </form>
    </div>

</div>

<%@ include file="/WEB-INF/include/footer.jsp" %>