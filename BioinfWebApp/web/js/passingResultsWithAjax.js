/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(initialize);

function initialize(){
    $("#molecularweight").click(function(){
        servletFun();
    });
}

function servletFun(){
    var url = "MolecularWeightServlet.do";
    var form = $("#form1");
    $.post(form.attr("action"), form.serialize(), function(data){
        alert("data");
        $("#molweight").append(data);
    });
};

function getServletData(){
    
}

