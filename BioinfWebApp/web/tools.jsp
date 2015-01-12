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
        <script src="js/OligoCreator_checkfile.js" type="text/javascript"></script>
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
                            <c:choose>
                                <c:when test="${(empty requestScope.test)}">
                                    <p>
                                        The Molecular Weight Calculator calculates the molecular mass of any sequence (DNA/RNA). It is calculated as the sum of the mass of each constituent nucleotide in Dalton.
                                        Place your FASTA data in the text field.
                                    </p>
                                    <form action="MolecularWeightServlet.do" method="POST">
                                        <!--<input type="file" size="50" name="file1"></input><br /><br />-->
                                        <select name="item">
                                            <option value="Single">Single stranded</option>
                                            <option value="Double">Double stranded</option>
                                        </select><br /><br />
                                        <textarea name="inputByText" cols="50" placeholder="Copy/Paste your sequence data here..."></textarea>
                                        <input type="submit" value="Submit"> Calculate Molecular Mass!</input>
                                    </form>
                                </c:when>
                            </c:choose>
                            <c:if test="${! empty requestScope.test}">
                                <c:forEach var="country" items="${test}">
                                    FASTA header: ${country.key}  - Molecular Weight in Dalton: ${country.value} <br />
                                </c:forEach>
                                <input type="button" value="Back" onClick="history.go(-1);
                                        return true;"></input>
                            </c:if>
                        </div>



                        <h3>Oligo Creator</h3>
                        <div>

                            ${requestScope.message}

                            <p>This tool creates oligos from a given fasta file.</p>

                            <input type="hidden" name="forwardTo" value="${pageContext.request.servletPath}" />

                            <b>Upload a file</b><br />

                            <form id="oligoform" action="createoligos.do" method="post" enctype="multipart/form-data">

                                <input type="file" class="filebrowse" name="fileName" id="file" />


                                <br /><br />
                                <b>Filter for</b><br />

                                <input type="checkbox" name="monorepeats" value="monorepeats" /> no mononucleotide repeats <a onclick="return false" href="#" title="A sequence contains mononucleotide repeats if the same nucleotide repeats itself for four times or more. For example: AAAA or TTTT."> <img src="images/information.png" alt=""/></a><br />
                                <input type="checkbox" name="direpeats" value="direpeats" /> no dinucleotide repeats <a onclick="return false" href="#" title="A sequence contains dinucleotide repeats if two nucleotides repeat themselves for three times or more. For example: CGCGCG or ACACAC."> <img src="images/information.png" alt=""/></a><br />
                                <input type="checkbox" name="hairpins" value="hairpins" /> no hairpins <a onclick="return false" href="#" title="A sequence can form a hairpin if the reversed complement of a part of at least five nucleotides can be found in the rest of the sequence, with a minimum of three nucleotides in between. For example: ACTGAGCGTCAGT."><img src="images/information.png" alt=""/></a><br /><br />

                                <label for="temperature">Melting temperature between:</label>
                                <input name="temperature" type="text" id="temperature" readonly style="border:0; color:#000000; font-weight:bold;" />
                                <div id="slider-range"></div>

                                <br />
                                <label for="size">Size oligos of</label>
                                <input name="size" type="text" id="size" readonly style="border:0; color:#000000; font-weight:bold;" />
                                <div id="slider"></div>

                                <br />
                                <button type="button" id="submitButton" onclick="checkFields()">Download file</button>


                            </form>

                        </div>


                        <h3>DNA translator</h3>
                        <div>
                            
                            <form name="dna_sequence_text" method="POST" action="Translating.do">
                                <textarea name="sequence_input" rows="15" cols="60">
                                    GGTTTCGCTGACGAACCTCCAGACCCTTTACCTCGACAAAAGCAGCGTCGAAGACTATTC
                                    ATCCCTCGAAAACATCTACACCACCCTCGCCAACAAAGATTTTATCATTCCTACCACACT
                                    TAAAGACCTTGGATTCAACCTTGATCCCAACAATCACGAAGCTTACTTCGAAAGCGAGTT
                                    AGCCAATTTCACCGTTACCCATGACCAGTGGGGGCCGCCATCCAGGGAAGACAACCAGAA
                                    TATCATCCGCATGACCCTGTACCTGAATGATGAATACAAAACCTCTATTGGTTACTATGA
                                    CGTACACAAGGTTTACCTCTGCCAAATGGATAAGGAAGGCCAGCCACCCGTGAACTACCT
                                    CTACGACATCGCCACTGGCGAATATTCCATCGATGGGCAGGATCGGACGAACTCAGAACA
                                    GATGATCCGTGCCGCCTTGGAAGTTGAAAATGGCGAAGATCCGCTGTATGCACCCATCCG
                                    CTTCTTTAATGAAACCATTCGGAACACCTTCAAAATGACCCCCGAAAAATTGTTCACATT
                                    GCCGTATGAACCACCGACCCTCAAGAGTCTGGGCTTTGTCCCAGACGAGACCCCCGGGAT
                                    TTATATGTATGAGCAGCACGAAGGCATCTATACCAACATCCGCATCGACCACAACGAAAA
                                    AGAAAATAAGGAATATGATGTCGTATTTTTTCAACCGATTACTGACGTTTACCGCGTAAA
                                    CTTGTTCTATCACACAACCGACAACAAACTATTTGTTGGCGCCGACGATAATTACAACGG
                                    TGGGGCAAGTTTTTACTATTATCTGGATACCGGCGAACACATCGATGAATGGTGCAGCGA
                                    TCCTGACATGACCGTGGAAGAATACTTCATCAAAGCTTACAACGATCCCGCGATCGAGGA
                                    TGTTTACCAGCATTCCATGAATTTAATGGTGCAATACATTCGTGATACCTTTGGTATGAC
                                    GATCGAGGAGCTGTATTCTCTGCCGACAGGTGAATAAGGATTAAAGGGTGTCAACGAGAC
                                    CCGTAAGGCAAGATGACATTAGGTCAAGTACAAATGGGTAATCTTGAAAATTGATGAC
                                </textarea>
                                </br>
                                <select name ="frames" id="frames">
                                    <option value="-3">frame 1</option>
                                    <option value="-2">frame 2</option>
                                    <option value="-1">frame 3</option>
                                    <option value="0">frame 4</option>
                                    <option value="1">frame 5</option>
                                    <option value="2">frame 6</option>
                                </select>
                                <input type="submit" value= "Translate sequence"/>
                            </form>
                        
                        </div>

                        <h3>Reverse complementer</h3>
                        <div>
                           
                            This tool creates the reversed complement of a given fasta sequence.

                            <c:choose>
                                <c:when test="${(empty requestScope.output)}">
                                    <form action="reversedcomplement.do" method="POST">
                                        <br /><b>Upload your fasta file</b><br />
                                        <input type="file" name="reversedComplementFile" id="reversedComplementFile" /><br /><br />
                                        Or paste your sequence data in the text field.


                                        <!--<input type="file" size="50" name="file1"></input><br /><br />-->

                                        <textarea name="inputByText" cols="50" placeholder="Copy/Paste your sequence data here..."></textarea>
                                        <br /><br /><input type="submit" value="Download reversed complement"></input>
                                    </form>
                                </c:when>
                            </c:choose>

                            <c:if test="${! empty requestScope.output}">
                                ${requestScope.output}
                            </c:if>

                        </div>
                       
                        <h3>Random fasta generator</h3>
                        
                        
                        <div>

                            <c:choose>
                                <c:when test="${(empty requestScope.seq_number_field) && (empty requestScope.amino_acids)}">
                                    <jsp:include page="includes/submit_entry_fields.jsp"></jsp:include>
                                </c:when>
                                <c:otherwise>
                                    <jsp:include page="includes/submit_information.jsp"></jsp:include>
                                </c:otherwise>
                            </c:choose>
                           
                        </div>
                        
                        
                        
                    </div>
                </div>        
            </div>
            <%@include file="./includes/bodyFooter.jsp" %>
        </div>  
    </body>
</html>

