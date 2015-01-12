/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(tooltip);

function tooltip(event) {
    $(".field_comment").hide();
    $("#req_node_number_h").mouseenter(function() {
        $("#req_node_number").show();
    }).mouseleave(function() {
        $("#req_node_number").hide();
    });
    $("#req_node_length_h").mouseenter(function() {
        $("#req_node_length").show();
    }).mouseleave(function() {
        $("#req_node_length").hide();
    });
    $("#req_node_var_h").mouseenter(function() {
        $("#req_node_var").show();
    }).mouseleave(function() {
        $("#req_node_var").hide();
    });
    $("#req_node_perc_h").mouseenter(function() {
        $("#req_node_perc").show();
    }).mouseleave(function() {
        $("#req_node_perc").hide();
    });
};