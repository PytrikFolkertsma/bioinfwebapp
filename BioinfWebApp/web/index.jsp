<%-- 
    Document   : bioinfHomePage
    Created on : 23-nov-2014, 18:47:44
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
          <a href="http://www.stcorp.no/technology/bioinformatics/" target="_blank">
         <img src="images/2.jpg" width="970" height="300" alt="gallery_garden_two" />
         </a>
      </div>
      <div id="sidebar_container">
	    <img class="paperclip" src="images/paperclip.png" alt="paperclip" />
        <div class="sidebar">
          <h3>Latest News</h3>
          <h4>New Website Launched</h4>
          <h5>January 1st, 2013</h5>
          <p>2013 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>
          <h4>20% Discount</h4>
          <h5>June 1st, 2013</h5>
          <p>We are offering a 20% discount to all new customers.<br /><a href="#">Read more</a></p>
        </div>
      </div>
      <div class="content">
        <h1>Welcome to the Bioinformatics website</h1>
        
        
      
        
      </div>        
      </div>
    
    <%@include file="./includes/bodyFooter.jsp" %>
    
      </div>  

</body>
</html>

