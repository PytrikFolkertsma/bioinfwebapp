<%-- 
    Document   : index
    Created on : Nov 27, 2014, 12:16:46 PM
    Author     : ngnodde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="QuizCSS.css" rel="stylesheet" type="text/css"/>
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/accordion.js" type="text/javascript"></script>
        <title>Quizes</title>
    </head>
    <body>
        <h2>Welcome to the quiz page!</h2>
        <div>
            <p>This is page is designed by bioinformatics students, for bioinformatics students!
                It contains several quizzes that are related to course material throughout the curriculum.
                The currently available quizzes contains questions about BLAST, nucleotides and amino acids. In the future
                more quizzes may be added. For each quiz a leaderboard is maintained so that you can show everyone who is the boss!
                The leaderboards are based on score and time, if scores are equal the person with the best time ranks highest.
            </p>
            <p>
                Each quiz is made up of 20 question, the question order is randomized and the questions differ every time.


            </p>


            <br />
        </div>
        <div class="accordion">
            <div class="accordion-section">
                <a class="accordion-section-title" href="#accordion-1">Nucleotide quiz</a>
                <div id="accordion-1" class="accordion-section-content">
                    <p><b>explanations about the quiz (eg. question types, number of questions and leaderboard)<br /></b>
                        Bacon ipsum dolor amet sint laboris exercitation, turkey turkey turkey turkey aliqua turkey turkey pariatur eu turkey turkey aliquip. Turkey ex elit, turkey quis turkey turkey cillum. Turkey turkey proident irure turkey fugiat. Laborum ut dolor, ullamco sint proident turkey commodo turkey ipsum fugiat turkey turkey. Sed turkey turkey ad turkey, nisi duis fugiat turkey irure id turkey dolore.
                        Minim turkey turkey, turkey in cillum turkey magna turkey exercitation turkey turkey. Cillum deserunt aliquip turkey ipsum turkey turkey laboris turkey turkey ullamco in turkey. Aliqua turkey incididunt, turkey tempor turkey dolore aute turkey turkey. Cupidatat turkey incididunt laborum turkey.
                        Reprehenderit ut culpa turkey ea turkey turkey turkey turkey turkey turkey dolore mollit. Cupidatat turkey sint, quis pariatur turkey turkey. Reprehenderit elit turkey culpa, nulla turkey nostrud turkey turkey velit turkey laboris aliqua. Turkey enim in culpa ut ex ad turkey turkey. Turkey ut ex turkey incididunt turkey turkey cillum.
                        Cillum ad dolore turkey magna dolor. Turkey turkey in nisi turkey turkey aliquip turkey labore. Nostrud velit turkey turkey. Cupidatat turkey turkey excepteur, turkey aliquip aliqua turkey turkey ad turkey pariatur. Enim aliquip turkey laboris ut turkey ad elit turkey. <br /><br />
                    </p>
                    <b>Nucleotide leaderbord based on score and time </b>    
                    <table class="iets">
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
                </div><!--end .accordion-section-content-->
            </div><!--end .accordion-section-->
        </div>
        <div class="accordion">
            <div class="accordion-section">
                <a class="accordion-section-title" href="#accordion-2">Aminoacid quiz</a>
                <div id="accordion-2" class="accordion-section-content">
                    <p><b>explanations about the quiz (eg. question types, number of questions and leaderboard)</b><br />
                        Bacon ipsum dolor amet sint laboris exercitation, turkey turkey turkey turkey aliqua turkey turkey pariatur eu turkey turkey aliquip. Turkey ex elit, turkey quis turkey turkey cillum. Turkey turkey proident irure turkey fugiat. Laborum ut dolor, ullamco sint proident turkey commodo turkey ipsum fugiat turkey turkey. Sed turkey turkey ad turkey, nisi duis fugiat turkey irure id turkey dolore.
                        Minim turkey turkey, turkey in cillum turkey magna turkey exercitation turkey turkey. Cillum deserunt aliquip turkey ipsum turkey turkey laboris turkey turkey ullamco in turkey. Aliqua turkey incididunt, turkey tempor turkey dolore aute turkey turkey. Cupidatat turkey incididunt laborum turkey.
                        Reprehenderit ut culpa turkey ea turkey turkey turkey turkey turkey turkey dolore mollit. Cupidatat turkey sint, quis pariatur turkey turkey. Reprehenderit elit turkey culpa, nulla turkey nostrud turkey turkey velit turkey laboris aliqua. Turkey enim in culpa ut ex ad turkey turkey. Turkey ut ex turkey incididunt turkey turkey cillum.
                        Cillum ad dolore turkey magna dolor. Turkey turkey in nisi turkey turkey aliquip turkey labore. Nostrud velit turkey turkey. Cupidatat turkey turkey excepteur, turkey aliquip aliqua turkey turkey ad turkey pariatur. Enim aliquip turkey laboris ut turkey ad elit turkey. <br /><br />
                    </p>
                    <table class="iets">
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
                </div><!--end .accordion-section-content-->
            </div><!--end .accordion-section-->
        </div><!--end .accordion-->
        <div class="accordion">
            <div class="accordion-section">
                <a class="accordion-section-title" href="#accordion-3">BLAST quiz</a>
                <div id="accordion-3" class="accordion-section-content">
                    <p><b>explanations about the quiz (eg. question types, number of questions and leaderboard)</b><br />
                    <p>Bacon ipsum dolor amet turkey enim nisi turkey turkey, cillum dolore turkey in turkey occaecat turkey. Exercitation esse turkey turkey. Turkey mollit turkey, dolore turkey duis qui turkey excepteur. Turkey turkey turkey incididunt turkey pariatur turkey ad nostrud turkey culpa ut. Non turkey exercitation turkey.
                        Fugiat elit turkey turkey turkey velit anim. Ut non turkey dolore turkey turkey turkey ad turkey enim labore est occaecat. Turkey cillum id, veniam in turkey et turkey cupidatat occaecat nisi. Turkey turkey quis, non turkey turkey cillum fugiat voluptate incididunt officia nulla turkey turkey turkey. Turkey nulla turkey fugiat, voluptate consectetur excepteur deserunt turkey ea.
                        Non turkey lorem in occaecat. Turkey turkey sed exercitation turkey turkey turkey consectetur turkey deserunt turkey proident turkey mollit dolore. Occaecat incididunt turkey turkey turkey. Proident et nostrud sed. Qui turkey turkey sunt turkey turkey sint turkey eiusmod labore laboris.
                        Turkey ipsum fugiat turkey turkey turkey exercitation. Turkey ad do, irure ex eu turkey turkey turkey ea turkey turkey. Labore cillum turkey turkey turkey turkey officia. Consequat mollit laboris, qui fugiat ex cillum ut anim labore ipsum eiusmod non turkey. Dolore turkey enim, in turkey esse non dolore nulla turkey occaecat laboris turkey pariatur.
                    </p>
                    <table class="iets">
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
                </div><!--end .accordion-section-content-->
            </div><!--end .accordion-section-->
        </div><!--end .accordion-->
        <div class="accordion">
            <div class="accordion-section">
                <a class="accordion-section-title" href="#accordion-4">Leaderboards</a>
                <div id="accordion-4" class="accordion-section-content">
                    <p><b>Explanations about the leaderbords etc.</b><br />
                    <p>Bacon ipsum dolor amet turkey enim nisi turkey turkey, cillum dolore turkey in turkey occaecat turkey. Exercitation esse turkey turkey. Turkey mollit turkey, dolore turkey duis qui turkey excepteur. Turkey turkey turkey incididunt turkey pariatur turkey ad nostrud turkey culpa ut. Non turkey exercitation turkey.
                        Fugiat elit turkey turkey turkey velit anim. Ut non turkey dolore turkey turkey turkey ad turkey enim labore est occaecat. Turkey cillum id, veniam in turkey et turkey cupidatat occaecat nisi. Turkey turkey quis, non turkey turkey cillum fugiat voluptate incididunt officia nulla turkey turkey turkey. Turkey nulla turkey fugiat, voluptate consectetur excepteur deserunt turkey ea.
                        Non turkey lorem in occaecat. Turkey turkey sed exercitation turkey turkey turkey consectetur turkey deserunt turkey proident turkey mollit dolore. Occaecat incididunt turkey turkey turkey. Proident et nostrud sed. Qui turkey turkey sunt turkey turkey sint turkey eiusmod labore laboris.
                        Turkey ipsum fugiat turkey turkey turkey exercitation. Turkey ad do, irure ex eu turkey turkey turkey ea turkey turkey. Labore cillum turkey turkey turkey turkey officia. Consequat mollit laboris, qui fugiat ex cillum ut anim labore ipsum eiusmod non turkey. Dolore turkey enim, in turkey esse non dolore nulla turkey occaecat laboris turkey pariatur.
                    </p>

                    <table border="0">

                        <tr><td class="border" width="350px">
                                <h3>Nucleotide quiz</h3>
                                <table class="iets">
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
                                </table><br />
                            </td>

                            <td class="border" width="350px">
                                <h3>Amino acid quiz</h3>
                                <table class="iets">
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
                                </table><br />
                            </td>

                            <td class="border" width="350px">
                                <h3>BLAST quiz</h3>
                                <table class="iets">
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
                                </table><br />
                            </td>

                    </table>
                </div><!--end .accordion-section-content-->
            </div><!--end .accordion-section-->
        </div><!--end .accordion-->
    </body>
</html>
