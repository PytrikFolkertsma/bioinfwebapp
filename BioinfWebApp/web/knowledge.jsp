<%-- 
    Document   : knowledge
    Created on : Nov 27, 2014, 1:50:16 PM
    Author     : pfolkertsma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


                <div class="content2">
                    <h1>Knowledge</h1>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>

                    <div id="tabs">
                        <ul>
                            <li><a href="#tabs-1">IUPAC</a></li>
                            <li><a href="#tabs-2">Amino Acids</a></li>
                            <li><a href="#tabs-3">Third</a></li>
                        </ul>
                        <div id="tabs-2">
                            <table id="report" width="100%">
                                       <thead>
                                           <tr>
                                               <th><h6>Name</h6></th>
                                               <th><h6>Single letter code</h6></th>
                                               <th><h6>Triple letter code</h6></th>
                                               <th><h6>Molecular weight</h6></th>
                                           </tr>
                                       </thead>                                         
                                       <tr id = "Alanine" style="cursor: pointer;">
                                           <div id="Alanine">
                                               <td class="dialog">Alanine</td>
                                               <td class="dialog">A</td>
                                               <td class="dialog">Ala</td>
                                               <td class="dialog">89.09 </td>
                                           </div>
                                       </tr>                                            
                                       <tr id = "Cysteine" style="cursor: pointer;">
                                           <div id="Cysteine">
                                               <td class="dialog">Cysteine</td>
                                               <td class="dialog">C</td>
                                               <td class="dialog">Cys</td>
                                               <td class="dialog">121.16</td>
                                           </div>
                                       </tr>                                            
                                       <tr id = "Aspartate" style="cursor: pointer;">
                                           <div id="Aspartate">
                                               <td class="dialog">Aspartate</td>
                                               <td class="dialog">D</td>
                                               <td class="dialog">Asp</td>
                                               <td class="dialog">133.10</td>
                                           </div>
                                       </tr>                                            
                                       <tr id = "Glutamate" style="cursor: pointer;">
                                           <div id="Glutamate">
                                               <td class="dialog">Glutamate</td>
                                               <td class="dialog">E</td>
                                               <td class="dialog">Glu</td>
                                               <td class="dialog">147.13</td>
                                           </div>
                                       </tr>
                                       <tr id = "Phenylalanine" style="cursor: pointer;">
                                           <div id="Phenylalanine">
                                               <td class="dialog">Phenylalanine</td>
                                               <td class="dialog">F</td>
                                               <td class="dialog">Phe</td>
                                               <td class="dialog">165.19</td>
                                           </div>
                                       </tr>
                                      <tr id = "Glycine" style="cursor: pointer;">
                                           <div id="Glycine">
                                               <td class="dialog">Glycine</td>
                                               <td class="dialog">G</td>
                                               <td class="dialog">Gly</td>
                                               <td class="dialog">75.07 </td>
                                           </div>
                                       </tr>   
                                      <tr id = "Histidine" style="cursor: pointer;">
                                           <div id="Histidine">
                                               <td class="dialog">Histidine</td>
                                               <td class="dialog">H</td>
                                               <td class="dialog">His</td>
                                               <td class="dialog">155.15 </td>
                                           </div>
                                       </tr>   
                                      <tr id = "Isoleucine" style="cursor: pointer;">
                                           <div id="Isoleucine">
                                               <td class="dialog">Isoleucine</td>
                                               <td class="dialog">I</td>
                                               <td class="dialog">Ile</td>
                                               <td class="dialog">131.17 </td>
                                           </div>
                                       </tr>   
                                      <tr id = "Lysine" style="cursor: pointer;">
                                           <div id="Lysine">
                                               <td class="dialog">Lysine</td>
                                               <td class="dialog">K</td>
                                               <td class="dialog">Lys</td>
                                               <td class="dialog">146.19 </td>
                                           </div>
                                       </tr>   
                                      <tr id = "Leucine" style="cursor: pointer;">
                                           <div id="Leucine">
                                               <td class="dialog">Leucine</td>
                                               <td class="dialog">L</td>
                                               <td class="dialog">Leu</td>
                                               <td class="dialog">131.17 </td>
                                           </div>
                                       </tr>   
                                       <tr id = "Methionine" style="cursor: pointer;">
                                            <div id="Methionine">
                                                <td class="dialog">Methionine</td>
                                                <td class="dialog">M</td>
                                                <td class="dialog">Met</td>
                                                <td class="dialog">149.21 </td>
                                            </div>
                                        </tr>   
                                       <tr id = "Asparagine" style="cursor: pointer;">
                                            <div id="Asparagine">
                                                <td class="dialog">Asparagine</td>
                                                <td class="dialog">N</td>
                                                <td class="dialog">Asn</td>
                                                <td class="dialog">132.12  </td>
                                            </div>
                                        </tr>   
                                       <tr id = "Proline" style="cursor: pointer;">
                                            <div id="Proline">
                                                <td class="dialog">Proline</td>
                                                <td class="dialog">P</td>
                                                <td class="dialog">Pro</td>
                                                <td class="dialog">115.13  </td>
                                            </div>  
                                        </tr>   
                                       <tr id = "Glutamine" style="cursor: pointer;">
                                            <div id="Glutamine">
                                                <td class="dialog">Glutamine</td>
                                                <td class="dialog">Q</td>
                                                <td class="dialog">Glu</td>
                                                <td class="dialog">146.14  </td>
                                            </div>  
                                        </tr>   
                                       <tr id = "Arginine" style="cursor: pointer;">
                                            <div id="Arginine">
                                                <td class="dialog">Arginine</td>
                                                <td class="dialog">R</td>
                                                <td class="dialog">Arg</td>
                                                <td class="dialog">174.20  </td>
                                            </div>  
                                        </tr>   
                                       <tr id = "Serine" style="cursor: pointer;">
                                            <div id="Serine">
                                                <td class="dialog">Serine</td>
                                                <td class="dialog">S</td>
                                                <td class="dialog">Ser</td>
                                                <td class="dialog">105.09  </td>
                                            </div>  
                                        </tr>   
                                       <tr id = "Threonine" style="cursor: pointer;">
                                            <div id="Threonine">
                                                <td class="dialog">Threonine</td>
                                                <td class="dialog">T</td>
                                                <td class="dialog">Thr</td>
                                                <td class="dialog">119.12  </td>
                                            </div>  
                                        </tr>   
                                       <tr id = "Valine" style="cursor: pointer;">
                                            <div id="Valine">
                                                <td class="dialog">Valine</td>
                                                <td class="dialog">V</td>
                                                <td class="dialog">Val</td>
                                                <td class="dialog">117.15  </td>
                                            </div>  
                                        </tr>   
                                       <tr id = "Tryptophan" style="cursor: pointer;">
                                            <div id="Tryptophan">
                                                <td class="dialog">Tryptophan</td>
                                                <td class="dialog">W</td>
                                                <td class="dialog">Trp</td>
                                                <td class="dialog">204.23  </td>
                                            </div>  
                                        </tr>   
                                       <tr id = "Tyrosine" style="cursor: pointer;">
                                            <div id="Tyrosine">
                                                <td class="dialog">Tyrosine</td>
                                                <td class="dialog">Y</td>
                                                <td class="dialog">Tyr</td>
                                                <td class="dialog">181.19  </td>
                                            </div>  
                                        </tr>   
                                       <tr id = "Selenocysteine" style="cursor: pointer;">
                                            <div id="Selenocysteine">
                                                <td class="dialog">Selenocysteine</td>
                                                <td class="dialog">U</td>
                                                <td class="dialog">Sec</td>
                                                <td class="dialog">168.05  </td>
                                            </div>  
                                        </tr>   
                                       <tr id = "Pyrrolysine" style="cursor: pointer;">
                                            <div id="Pyrrolysine">
                                                <td class="dialog">Pyrrolysine</td>
                                                <td class="dialog">O</td>
                                                <td class="dialog">Pyl</td>
                                                <td class="dialog">255.31  </td>
                                            </div>  
                                        </tr>   
                                   </table>
                                   <div id="dialog" title="Additional information"></div>
                        </div>Nam dui erat, auctor a, dignissim quis, sollicitudin eu, felis. Pellentesque nisi urna, interdum eget, sagittis et, consequat vestibulum, lacus. Mauris porttitor ullamcorper augue.
                         
                        <div id="tabs-1">
                            <c:choose>
                                <c:when test="${(empty requestScope.nucleotides) && (empty requestScope.amino_acids)}">
                                    Please select an option:
                                    <form name="Nucleotides" action="NucleotideServlet.do">
                                        <input type="submit" value="Fetch IUPAC Nucleotide Codes" name="Nucleotides" />
                                    </form>
                                    <form name="AminoAcids" action="say-hello.do">
                                        <input type="submit" value="Fetch IUPAC AminoAcid Codes" name="AminoAcids" />
                                    </form>
                                </c:when>
                            </c:choose>
                            <c:if test="${! empty requestScope.nucleotides}">
                                <table>
                                    <tr>
                                        <th>Nucleotide Code</th>
                                        <th>Base</th>
                                    </tr>
                                    <tr>
                                        <c:forEach var="nuc" items="${requestScope.nucleotides}">
                                            <td>${nuc.name}</td>
                                            <td>${nuc.base}</td>
                                    </tr>
                                    </c:forEach>
                                    <tr>
                                        <td>'-' & '.'</td>
                                        <td> means gap</td>
                                    </tr>
                                </table>
                                <form><input type="button" value="Back" onClick="history.go(-1);return true;">
                            </c:if>
                            <c:if test="${! empty requestScope.amino_acids}">
                                <table>
                                    <tr>
                                        <th>Full name</th>
                                        <th>Three letter</th>
                                        <th>One letter</th>
                                    </tr>

                                    <tr>
                                        <c:forEach var="aa" items="${requestScope.amino_acids}">
                                            <td>${aa.full}</td>
                                            <td>${aa.three}</td>
                                            <td>${aa.one}</td>
                                    </tr>
                                    </c:forEach>
                                </table>
                                <form><input type="button" value="Back" onClick="history.go(-1);return true;">
                            </c:if>
                        </div>
                        <div id="tabs-3">
                            hoi
                        </div>
                    </div>
                </div>
            </div>   
            <%@include file="./includes/bodyFooter.jsp" %>
        </div>


    </body>
</html>

