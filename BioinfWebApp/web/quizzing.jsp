<%-- 
    Document   : quizzing
    Created on : Nov 27, 2014, 1:57:46 PM
    Author     : pfolkertsma
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
                    <img src="images/2.jpg" width="970" height="300" alt="gallery_garden_two" />
                </div>

                <div class="content2">
                    <h1>Quizzing</h1>
                    <h2>Welcome to the quiz page!</h2>
                    <p>This is page is designed by bioinformatics students, for bioinformatics students!
                        It contains several quizzes that are related to course material throughout the curriculum.
                        The currently available quizzes contains questions about BLAST, nucleotides and amino acids. In the future
                        more quizzes may be added. For each quiz a leaderboard is maintained so that you can show everyone who is the boss!
                        The leaderboards are based on score and time, if scores are equal the person with the best time ranks highest.

                    </p>
                    <p>
                        Each quiz is made up of 20 question, the question order is randomized and the questions differ every time.
                    </p>

                    <div id="accordion">
                        <h3>Nucleotide quiz</h3>
                        <div>
                            <p><b>Nucleotide quiz<br /></b>
                                This quiz contains 30 questions about nucleotides. The questions are randomized every time. <br />
                                It contains questions about UIPAC codes, nucleotide structures, abbreviations, classes and amibiguity. <br />
                                This quiz includes drag and drop, multiple choice and open questions. In the end the score is calculated and you have a chance to join the leaderbord based on score and time!
                                So dig in and enhance your knowledge!
                            </p>
                            <b>Nucleotide leaderbord top 3 based on score and time </b>
                            <table>
                                <tr>
                                    <th>Player name</th>
                                    <th>Score</th>
                                    <th>Time(minutes)</th>
                                </tr>
                                <tr>
                                    <td>Marvin Bot</td>
                                    <td>99</td>
                                    <td>1.42</td>
                                </tr>
                                <tr>
                                    <td>Ford Prefect</td>
                                    <td>42</td>
                                    <td>3.1415</td>
                                </tr>
                                <tr>
                                    <td>Zaphod Beeblebrox</td>
                                    <td>8</td>
                                    <td>12454541.01</td>
                                </tr>
                            </table><br />

                            <button type="button">Quiz me!</button>
                        </div>
                        <h3>Amino acid quiz</h3>
                        <div>
                            <p><b>Amino acid quiz</b><br />
                                This quiz consists of 30 questions about amino acids, the questions are randomized every time <br />
                                It contains questions about IUPAC codes, amino acid structures, ambiguity, abbreviations and the amino acid coding table <br />
                                This quiz includes drag and drop, multiple choice and open questions. In the end the score is calculated and you have a chance to join the leaderbord based on score and time!
                                So dig in and enhance your knowledge!
                            </p>
                            <b>Amino acid leaderbord top 3 based on score and time </b>   
                            <table>
                                <tr>
                                    <th>Player name</th>
                                    <th>Score</th>
                                    <th>Time(minutes)</th>
                                </tr>
                                <tr>
                                    <td>Marvin Bot</td>
                                    <td>99</td>
                                    <td>1.42</td>
                                </tr>
                                <tr>
                                    <td>Ford Prefect</td>
                                    <td>42</td>
                                    <td>3.1415</td>
                                </tr>
                                <tr>
                                    <td>Zaphod Beeblebrox</td>
                                    <td>8</td>
                                    <td>12454541.01</td>
                                </tr>
                            </table><br />
                            <button type="button">Quiz me!</button>
                        </div>
                        <h3>BLAST Quiz</h3>
                        <div>
                            <p><b>BLAST quiz</b><br />
                                This quiz consists of 30 questions about the BLAST tool, the questions are randomized every time. <br />
                                It contains about BLAST types, flags, input/output types and scoring matrici and algorithms <br />
                                This quiz includes drag and drop, multiple choice and open questions. In the end the score is calculated and you have a chance to join the leaderbord based on score and time!
                                So dig in and enhance your knowledge!

                            </p>
                            <b>BLAST leaderbord top 3 based on score and time </b>   
                            <table>
                                <tr>
                                    <th>Player name</th>
                                    <th>Score</th>
                                    <th>Time(minutes)</th>
                                </tr>
                                <tr>
                                    <td>Marvin Bot</td>
                                    <td>99</td>
                                    <td>1.42</td>
                                </tr>
                                <tr>
                                    <td>Ford Prefect</td>
                                    <td>42</td>
                                    <td>3.1415</td>
                                </tr>
                                <tr>
                                    <td>Zaphod Beeblebrox</td>
                                    <td>8</td>
                                    <td>12454541.01</td>
                                </tr>
                            </table><br />
                            <button type="button">Quiz me!</button>
                        </div>
                        <h3>Leaderboards</h3>
                        <div>
                            <p><b>Leaderboards</b><br />
                                Welcome to the leaderboards! <br />
                                if you're in one of the leaderboards it means you've done a great job, congratulations! <br />
                                Your rank on the leaderboard is based on score, if 2 persons have the same score then your rank is based on time of completion <br />
                                Each leaderboard has 30 spots, so try your best!

                            </p>

                            <table border="0">

                                <tr><td>
                                        <h2>Nucleotide quiz</h2>
                                        <table>
                                            <tr>
                                                <th> Rank </th>
                                                <th>Player name</th>
                                                <th>Score</th>
                                                <th>Time(minutes)</th>
                                            </tr>
                                            <tr>
                                                <td> 1 </td>
                                                <td>Marvin Bot</td>
                                                <td>99</td>
                                                <td>1.42</td>
                                            </tr>
                                            <tr>
                                                <td> 2 </td>
                                                <td>Ford Prefect</td>
                                                <td>42</td>
                                                <td>3.1415</td>
                                            </tr>
                                            <tr>
                                                <td> 3 </td>
                                                <td>Zaphod Beeblebrox</td>
                                                <td>8</td>
                                                <td>12454541.01</td>
                                            </tr>
                                            <tr>
                                                <td> 4 </td>
                                                <td>Trillian</td>
                                                <td>20</td>
                                                <td>12.665</td>
                                            </tr>
                                            <tr>
                                                <td> 5 </td>
                                                <td>Arthur Dent</td>
                                                <td>15</td>
                                                <td>10.8</td>
                                            </tr>
                                        </table>
                                    </td>

                                    <td>
                                        <h2>Amino acid quiz</h2>
                                        <table>
                                            <tr>
                                                <th>Rank</th> 
                                                <th>Player name</th>
                                                <th>Score</th>
                                                <th>Time(minutes)</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Marvin Bot</td>
                                                <td>99</td>
                                                <td>1.42</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Ford Prefect</td>
                                                <td>42</td>
                                                <td>3.1415</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Zaphod Beeblebrox</td>
                                                <td>8</td>
                                                <td>12454541.01</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Trillian</td>
                                                <td>5</td>
                                                <td>12.665</td>
                                            </tr>
                                            <tr>
                                                <td> 5</td>
                                                <td>Arthur Dent</td>
                                                <td>3</td>
                                                <td>10.8</td>
                                            </tr>
                                        </table>
                                    </td>

                                    <td>
                                        <h2>BLAST quiz</h2>
                                        <table>
                                            <tr>
                                                <th>Rank</th> 
                                                <th>Player name</th>
                                                <th>Score</th>
                                                <th>Time(minutes)</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Marvin Bot</td>
                                                <td>99</td>
                                                <td>1.42</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Ford Prefect</td>
                                                <td>42</td>
                                                <td>3.1415</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Zaphod Beeblebrox</td>
                                                <td>8</td>
                                                <td>12454541.01</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Trillian</td>
                                                <td>5</td>
                                                <td>12.665</td>
                                            </tr>
                                            <tr>
                                                <td> 5</td>
                                                <td>Arthur Dent</td>
                                                <td>3</td>
                                                <td>10.8</td>
                                            </tr>
                                        </table>
                                    </td>
                            </table>
                        </div>
                    </div>
                </div>        
            </div>

            <%@include file="./includes/bodyFooter.jsp" %>

        </div>  

    </body>
</html>

