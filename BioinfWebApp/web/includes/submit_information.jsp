<%--
    Document   : submit_information
    Created on : Dec 11, 2014, 10:36:26 AM
    Author     : eschutte
--%>
<div id="download_submit_data_div">
    <form class="formular">
<!--        <label>
            <span>File name : </span>
            <span>${requestScope.random_name}</span>
        </label>-->
        <br />
        <label>
            <span>Number of nodes : </span>
            <span>${requestScope.seq_number_field}</span>
        </label>
        <br />
        <label>
            <span>Length of sequence : </span>
            <span>${requestScope.seq_length}</span>
        </label>
        <br />
        <label>
            <span>Deviation : </span>
            <span>${requestScope.seq_length_variation}</span>
        </label>
        <br />
        <label>
            <span>Percentage A : </span>
            <span>${requestScope.percentage_a}</span>
        </label>
        <label>
            <span>Percentage T : </span>
            <span>${requestScope.percentage_t}</span>
        </label>
        <label>
            <span>Percentage G : </span>
            <span>${requestScope.percentage_g}</span>
        </label>
        <label>
            <span>Percentage C : </span>
            <span>${requestScope.percentage_c}</span>
        </label>
        <br />
        <a href="FILES/hoi.fa" class="download" id="download_submit" download>Download!</a>
        <input class="submit" type="submit" value="Cancel" name="download_file" id="download_submit_cancel"/>
    </form>
</div>