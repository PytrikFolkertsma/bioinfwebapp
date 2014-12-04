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
                            <li><a href="#tabs-3">Codon Table</a></li>
                            <li><a href="#tabs-4">Blast Info</a></li>
                            <li><a href="#tabs-5">Nucleotides</a></li>
                        </ul>
                        <div id="tabs-2">
                            Nam dui erat, auctor a, dignissim quis, sollicitudin eu, felis. Pellentesque nisi urna, interdum eget, sagittis et, consequat vestibulum, lacus. Mauris porttitor ullamcorper augue.<br/><br/>
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
                        </div>
                         
                        <div id="tabs-1">
                            You can find all the information about the nucleotide and amino acid IUPAC codes here. Just hit the desired button and look for what you need.
                            <br/><br/>
                            Tip:
                            Getting tired of moveing your mouse to the address bar, and typing IUPAC Codes every time? Just bookmark this page, and you are only one click removed of finding all the information you need.
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
                            <table id="CodonTable">
                                        <tr>
                                                <th> </th>
                                                <th> U </th>
                                                <th> C </th>
                                                <th> A </th>
                                                <th> G </th>
                                        </tr>
                                        <tr>
                                            <th> U </th>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Phenylalanine">
                                                        <td class="dialog"style="cursor: pointer;">UUU <br /> UUC <br /></td>
                                                    </tr>
                                                    <tr id="Leucine">
                                                        <td class="dialog"style="cursor: pointer;"> UUA <br /> UUG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Serine">
                                                       <td class="dialog"style="cursor: pointer;"> UCU <br /> UCC <br /> UCA <br /> UCG </td>   
                                                    </tr> 
                                                </table>
                                            </td>
                                            <td> 
                                                <tabLe id="highlight"> 
                                                    <tr id="Tyrosine">
                                                        <td class="dialog"style="cursor: pointer;"> UAU <br /> UAC </td>
                                                    </tr>
                                                    <tr id="Stop Codon">
                                                        <td class="dialog"style="cursor: pointer;">UAA <br /> UAG </td>
                                                    </tr>
                                                </table>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Cysteine">
                                                        <td class="dialog"style="cursor: pointer;"> UGU <br /> UGC</td>
                                                    </tr>
                                                    <tr id="Stop Codon">
                                                        <td class="dialog"style="cursor: pointer;"> UGA </td>
                                                    </tr>
                                                    <tr id="Tryptophan">
                                                        <td class="dialog"style="cursor: pointer;"> UGG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th> C </th>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Leucine">
                                                        <td class="dialog"style="cursor: pointer;"> CUU <br /> CUC <br/> CUA <br/> CUG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Proline">
                                                        <td class="dialog"style="cursor: pointer;"> CCU <br /> CCC <br /> CCA <br /> CCG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Histidine">
                                                        <td class="dialog"style="cursor: pointer;"> CAU <br /> CAC</td>
                                                    </tr>
                                                    <tr id="Glutamine">
                                                        <td class="dialog"style="cursor: pointer;">CAA <br /> CAG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Arginine">
                                                        <td class="dialog"style="cursor: pointer;"> CGU <br> CGC <br> CGA <br> CGG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th> A </th>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Isoleucine">
                                                        <td class="dialog"style="cursor: pointer;"> AUU <br> AUC <br> AUA</td>
                                                    </tr>
                                                    <tr id="Methionine">
                                                        <td class="dialog"style="cursor: pointer;">AUG </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Threonine">
                                                        <td class="dialog"style="cursor: pointer;">ACU <br> ACC <br> ACA <br> ACG </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Asparagine">
                                                        <td class="dialog"style="cursor: pointer;" ACU <br> ACC</td>
                                                    </tr>
                                                    <tr id="Lysine">
                                                        <td class="dialog"style="cursor: pointer;">AAA <br> AAG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Serine">
                                                        <td class="dialog"style="cursor: pointer;"> AGU <br> AGC</td>
                                                    </tr>
                                                    <tr id="Arginine">
                                                        <td class="dialog"style="cursor: pointer;">AGA <br> AGG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th> G </th>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Valine">
                                                        <td class="dialog"style="cursor: pointer;">GUU <br> GUC <br> GUA <br> GUG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Alanine">
                                                        <td class="dialog"style="cursor: pointer;">GCU <br> GCC <br> GCA <br> GCG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                             <td>
                                                <table id="highlight">
                                                    <tr id="Aspartate">
                                                        <td class="dialog"style="cursor: pointer;">GAU <br> GAC</td>
                                                    </tr>
                                                    <tr id="Glutamine">
                                                        <td class="dialog"style="cursor: pointer;">GAA <br> GAG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td>
                                                <table id="highlight">
                                                    <tr id="Glycine">
                                                        <td class="dialog"style="cursor: pointer;">GGU <br> GGC <br> GGA <br> GGG</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                </table>
                        </div>
                        <div id="tabs-4">
                            <table id="blast" width="100%">
                                <thead>
                                    <tr>
                                        <th><h6>BLAST program</h6></th>
                                        <th><h6>E value</h6></th>
                                        <th><h6>Word size</h6></th>
                                        <th><h6>Gap open</h6></th>
                                        <th><h6>Gap extend</h6></th>
                                        <th><h6>Default Matrix</h6></th>
                                    </tr>
                                </thead>

                                <tr id="blastn" class="dialog">
                                    <td>BLASTN</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>5</td>
                                    <td>2</td>
                                    <td>No default</td>
                                </tr>

                                <tr id="blastp" class="dialog">
                                    <td>BLASTP</td>
                                    <td>10</td>
                                    <td>3</td>
                                    <td>11</td>
                                    <td>1</td>
                                    <td>blosum62</td>
                                </tr>

                                <tr id="blastx" class="dialog">
                                    <td>BLASTX</td>
                                    <td>10</td>
                                    <td>3</td>
                                    <td>11</td>
                                    <td>1</td>
                                    <td>blosum62</td>
                                </tr>

                                <tr id="tblastn" class="dialog">
                                    <td>TBLASTN</td>
                                    <td>10</td>
                                    <td>3</td>
                                    <td>11</td>
                                    <td>1</td>
                                    <td>blosum62</td>
                                </tr>

                                <tr id="psiblast" class="dialog">
                                    <td>PSI-BLAST</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>5</td>
                                    <td>2</td>
                                    <td>No default</td>
                                </tr>
                            </table>

                        </div>
                        <div id="tabs-5">
                            <table id="nucs" width="100%">
                                       <thead>
                                           <tr>
                                               <th><h6>Name</h6></th>
                                               <th><h6>Symbol</h6></th>
                                               <th><h6>DNA/RNA</h6></th>
                                               <th><h6>Molecular weight</h6></th>
                                           </tr>
                                       </thead>                                         
                                       <tr id = "Adenine" style="cursor: pointer;">
                                           <div id="Adenine">
                                               <td class="dialog">Adenine</td>
                                               <td class="dialog">A</td>
                                               <td class="dialog">DNA/RNA</td>
                                               <td class="dialog">135.13 </td>
                                           </div>
                                       </tr>                                            
                                       <tr id = "Cytosine" style="cursor: pointer;">
                                           <div id="Cytosine">
                                               <td class="dialog">Cytosine</td>
                                               <td class="dialog">C</td>
                                               <td class="dialog">DNA and RNA</td>
                                               <td class="dialog">111.1</td>
                                           </div>
                                       </tr>                                            
                                       <tr id = "Guanine" style="cursor: pointer;">
                                           <div id="Guanine">
                                               <td class="dialog">Guanine</td>
                                               <td class="dialog">G</td>
                                               <td class="dialog">DNA and RNA</td>
                                               <td class="dialog">151.13</td>
                                           </div>
                                       </tr>                                              
                                       <tr id = "Thymine" style="cursor: pointer;">
                                           <div id="Thymine">
                                               <td class="dialog">Thymine</td>
                                               <td class="dialog">T</td>
                                               <td class="dialog">DNA</td>
                                               <td class="dialog">126.1133</td>
                                           </div>
                                       </tr>                                              
                                       <tr id = "Uracil" style="cursor: pointer;">
                                           <div id="Uracil">
                                               <td class="dialog">Uracil</td>
                                               <td class="dialog">U</td>
                                               <td class="dialog">RNA</td>
                                               <td class="dialog">112.0868</td>
                                           </div>
                                       </tr>                                              
                                   </table>
                    </div>
                    </div>
                    </div>
                </div>
            </div>   
            <%@include file="./includes/bodyFooter.jsp" %>
        </div>


    </body>
</html>

