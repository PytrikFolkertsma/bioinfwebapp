/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(initialize);

function initialize() {
    $("#refresh_twitterfeed").click(function() {    
        getServerData();
    });
    
}

function getServerData() {
    var url = "tweet.me";
    $.get(url, function(data) {
        $("#tweets").append(data);
    });
}