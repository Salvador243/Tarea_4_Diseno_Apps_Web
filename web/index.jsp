<%-- 
    Document   : index
    Created on : Feb 14, 2022, 10:03:16 PM
    Author     : salva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarea 4 Diseno Apps</title>
    </head>

    <c:choose>
        <c:when test="${not empty requestScope.bajo}">
            <body style="background-color: blue;">
                <p>Estas Lejos Bajo</p>
            </c:when>  
            <c:when test="${not empty requestScope.alto}">
            <body style="background-color: red;">
                <p>Estas Cerca Alto</p>
            </c:when>
            <c:when test="${not empty requestScope.acierto}">
            <body style="background-color: green;">
            </c:when>  
            <c:otherwise>
            <body style="background-color: white;">
            </c:otherwise>
        </c:choose>

        <c:choose>
            <c:when test="${not empty requestScope.formulario}">
                <p>Adivinaste </p>
                <a href="index">Juagar de nuevo</a>
            </c:when>   
            <c:otherwise>
                <h3>Adivina el numero</h3>
                <form action="servlet" method="post">
                    <label>Tu crees que es: </label>
                    <input name="valor" type="number"/>
                    <button type="submit">Mandar</button>
                </form>
            </c:otherwise>
        </c:choose>
    </body>
</html>
