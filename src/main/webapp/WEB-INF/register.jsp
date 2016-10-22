<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/include/header.jsp" %>

<div class="container">
    <div class="card card-container">
        <h4> Create new account</h4>
        <form class="form-signin">
            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
            <input type="text" id="inputFirstName" class="form-control" placeholder="First name" required>
            <input type="text" id="inputLastName" class="form-control" placeholder="Last name" required>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
            <input type="password" id="inputRepeatedPassword" class="form-control" placeholder="Repeat password" required>

            <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Create</button>
        </form>
        <div class="margin-bottom-10">
            <a href="" class="forgot-password">Back to login</a>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/include/footer.jsp" %>