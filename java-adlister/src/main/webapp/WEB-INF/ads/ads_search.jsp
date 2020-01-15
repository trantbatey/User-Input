<%--
  Created by IntelliJ IDEA.
  User: trantbatey
  Date: 1/14/20
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <title>Ads Search Page</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Ads Search Page</h1>

    <form action="/ads/search" method="post">
        <label for="ads_search"><strong>Enter a partial Title or Description</strong></label>
        <input type="text" id="ads_search" name="filter">
        <button type="submit">Submit</button>
    </form>
</div>
