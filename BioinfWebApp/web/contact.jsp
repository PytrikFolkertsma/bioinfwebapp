<%-- 
    Document   : contact
    Created on : Nov 27, 2014, 1:58:31 PM
    Author     : pfolkertsma, salbassam
--%>

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
                    <%@include file="./includes/bodyWebImage.jsp" %>
                </div>
               
                <div class="content">
                    <h1>Contact</h1>

                    <article>
                        <b>Department of Bioinformatics <br />
                            Hanze University of Applied Sciences<br />
                            Institute for Life Science & Technology
                        </b>
                    </article><br />
                    <p>
                        Developed by S. Albassam, P. Folkersma, P. Folkertsma, N. Gnodde, J. Meijer, V. Nijenhuis, E. Schutte and L. Steenhuis
                    </p>
                    <p>
                        Zernikeplein 11<br />
                        9747 AS Groningen<br />
                    </p>
                </div>        
            </div>       
        </div>

        <%@include file="./includes/bodyFooter.jsp" %>

        </div>  

    </body>
</html>

