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
         <%@include file="./includes/bodyWebImage.jsp" %>
      </div>
      <div id="sidebar_container">
	    <img class="paperclip" src="images/paperclip.png" alt="paperclip" />
        <div class="sidebar">
          <h3>Latest News</h3>
          <h4>New Website Launched</h4>
          <h5>December 10th, 2014</h5>
          <p>2014 sees the redesign of our website. Take a look around and let us know what you think.<br /></p>
          <h4>Tools online!</h4>
          <h5>January 5th, 2015</h5>
          <p>Tools are now online! And almost functional!<br /></p>
          <h4>Knowledge!</h4>
          <h5>January 5th, 2015</h5>
          <p>The knowledge database is now available for usage.<br /></p>
        </div>
      </div>
      <div class="content">
        <h1>Home</h1>
        <p>
            Welcome to the updated portal of the bioinformatics website!
        </p>
        <p>
            This portal provides knowledge and functional tools for bioinformatics students.
            In the knowledge section you will find all kinds of information about useful subjects,
            such as amino acid information, codon tables and BLAST information. 
            Furthermore you can find a molecular weigh calculator, an oligo creator, a DNA translator,
            a reverse complementer and a random fasta generator in the tools section. 
            You think you have learned enough? Go take a quiz in the quizzing section of the portal! 
            The quizzes contain questions about information from the knowledge section.
        </p>
      </div>        
      </div>
    
    <%@include file="./includes/bodyFooter.jsp" %>
    
      </div>  

</body>
</html>

