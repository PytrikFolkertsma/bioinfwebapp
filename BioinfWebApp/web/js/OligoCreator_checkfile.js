/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function checkFields(){
  var file = document.getElementById('file').value; 

  if (file === ""){
    alert("Please upload a fasta file!");
  }
  else{
      document.getElementById("oligoform").submit();
  }
}

function getServerData() {
    var url = "tweet.me";
    $.get(url, function(data) {
        $("#tweets").append(data);
    });
}