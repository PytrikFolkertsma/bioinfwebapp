/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(
        function() {
            //alert("hi");
            $("#accordion").accordion();
            $("#tabs").tabs();
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 100,
                values: [45, 55],
                slide: function(event, ui) {
                    $("#temperature").val(+ui.values[ 0 ] + " °C - " + ui.values[ 1 ] + " °C");
                }
            });
            $("#temperature").val($("#slider-range").slider("values", 0) +
                    " °C - " + $("#slider-range").slider("values", 1) + " °C");

            $("#slider").slider({
                value: 15,
                min: 10,
                max: 30,
                step: 1,
                slide: function(event, ui) {
                    $("#size").val(ui.value + " nucleotides");
                }
            });
            $("#size").val($("#slider").slider("value") + " nucleotides");
            $(document).tooltip();
    
        }
);