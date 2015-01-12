/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(initialize);

function initialize() {
    $("#submit_data_form").submit(function(event){
        showSettingsData();
        event.preventDefault();
    });
    $("#download_submit_cancel").click(showFormData);
    $("#download_submit_data_div").hide();
}
function showSettingsData() {
    $("#download_submit_data_div").show();
    $("#submit_entry_fields").hide();
}

function showFormData() {
        //alert("hi");
    $("#download_submit_data_div").hide();
    $("#submit_entry_fields").show();
}


////    var seqNumber = $("#seq_number_field").val();
////    var seqLength = $("#seq_length").val();
////    var seqLengthVar = $("#seq_length_variation").val();
//A, T, G, C
//25,25,25,25