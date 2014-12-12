<%-- 
    Document   : tools
    Created on : Nov 27, 2014, 1:56:57 PM
    Author     : pfolkertsma
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <%@include file="./includes/headerLink.jsp" %>
        <%@include file="./includes/headerScript.jsp" %>
        <title>Bioinformatics Homepage</title>
    </head>

    <body>
        <div id="main">   
            <header>
                <%@include file="./includes/bodyLogo.jsp" %>      
                <%@include file="./includes/menu.jsp" %>    
            </header>


            <div id="site_content">
                <div id="top_border"></div>
                <div class="image">
                    <img src="images/2.jpg" width="970" height="300" alt="gallery_garden_two" />
                </div>

                <div class="content">
                    <h1>Tools</h1>
                    <div id="accordion">
                        <h3>Molecular Weight</h3>
                        <div>
                            <p>
                                The Molecular Weight Calculator calculates the molecular mass of any sequence (DNA/RNA). It is calculated as the sum of the mass of each constituent nucleotide in Dalton.
                                Place your FASTA data in the text field or upload a FASTA file.
                            </p>
                            
                            <c:choose>
                                <c:when test="${(empty requestScope.test)}">
                                    <form action="MolecularWeightServlet.do" method="POST">
                                        <textarea name="inputByText" cols="50" placeholder="Copy/Paste your sequence data here..."></textarea>
                                        <input type="submit"> Calculate Molecular Mass!</input>
                                    </form>
                                </c:when>
                            </c:choose>
                            <c:if test="${! empty requestScope.test}">
                                <text>test="${requestScope.test}"</text>
                            </c:if>
                        </div>
                        <h3>Something</h3>
                        <div>Phasellus mattis tincidunt nibh.</div>
                        <h3>Something</h3>
                        <div>Nam dui erat, auctor a, dignissim quis.</div>
                    </div>


                </div>        
            </div>

            <%@include file="./includes/bodyFooter.jsp" %>

        </div>  

    </body>
</html>

