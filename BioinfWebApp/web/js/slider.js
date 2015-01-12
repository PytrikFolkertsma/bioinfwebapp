/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function init() {
    //Init, calls function on document ready.
    lockSliders();
    slideSliders();
//    onSubmit();
});

function lockSliders() {
    //TODO figure out how this works in a loop for neat code.
//    var $lock_actg = $("#lock_slider_a, #lock_slider_c, #lock_slider_t, #lock_slider_g");
//    var $sliders = {"#lock_slider_a": "#slider_a", "#lock_slider_c": "#slider_c",
//                    "#lock_slider_t": "#slider_t", "#lock_slider_g": "#slider_g"};
//    $lock_actg.each(function() {
//        $(this).change(function() {
//            var $input = $(this);
//            var $slider = $sliders[$input];
//        
//            if ($input.prop("checked")) {
//            $($slider).slider("option","disabled",true);
//        } else {
//            $($slider).slider("option","disabled",false);
//            }
//        });
//    });
    // variables
    var $lock_a = $("#lock_slider_a");
    var $lock_c = $("#lock_slider_c");
    var $lock_t = $("#lock_slider_t");
    var $lock_g = $("#lock_slider_g");
    
    //Function to lock the slider when checking a box
    $("#lock_slider_a").change(function () {
        var $input = $(this);
        if ($input.prop("checked")) {
            $("#slider_a").slider("option", "disabled", true);
        } else {
            $("#slider_a").slider("option", "disabled", false);
        }
    });
        //Function to lock the slider when checking a box
    $("#lock_slider_c").change(function () {
        var $input = $(this);
        if ($input.prop("checked")) {
            $("#slider_c").slider("option", "disabled", true);
        } else {
            $("#slider_c").slider("option", "disabled", false);
        }
    });
        //Function to lock the slider when checking a box
    $("#lock_slider_t").change(function () {
        var $input = $(this);
        if ($input.prop("checked")) {
            $("#slider_t").slider("option", "disabled", true);
        } else {
            $("#slider_t").slider("option", "disabled", false);
        }
    });
        //Function to lock the slider when checking a box
    $("#lock_slider_g").change(function () {
        var $input = $(this);
        if ($input.prop("checked")) {
            $("#slider_g").slider("option", "disabled", true);
        } else {
            $("#slider_g").slider("option", "disabled", false);
        }
    });

}
;

function slideSliders() {
    // variables
    var $sliders = $(".sliders");
    var availableTotal = 100;
    // create the slider
    $sliders.each(function () {
        var $slider = $(this);
        $(this).empty().slider({
            min: 1,
            max: availableTotal,
            orientation: "vertical",
            step: 1,
            value: 25,
            slide: function (event, ui) {
                
                $(this).siblings().text(ui.value);
                // Get current total
                var total = 0;
                
                //Gets the html elements with the class slider
                //Gets every element except the current element.
                $(".sliders").not(this).each(function () {
                    total += $(this).slider("option", "value");
                });
                // Need to do this because apparently jQ UI
                // does not update value until this event completes
                total += ui.value;
                var delta = availableTotal - total;

                // Update each slider
                $(".sliders").not(this).each(function () {
                    var t = $(this),
                            value = t.slider("option", "value");
                    
                    //Sets the new value for the sliders
                    var new_value = value + (delta / 2);
                    
                    //check if the value exceeds 0 or 100
                    if (new_value < 0 || ui.value === 100)
                        new_value = 0;
                    if (new_value > 100)
                        new_value = 100;
                    
                    //Sets the value for the sliders' siblings
                    t.siblings('.value').text(new_value);
                    //Sets the new value for the slider
                    t.slider('value', new_value);
                    });}
//                },
//                change: function (event, ui) {
//                    alert($slider.parent().html());
//                }
        });
        
    });
//              $('input[name=slider_a]').val(ui.value);
//              $('input[name=slider_t]').val(ui.value);
//              $('input[name=slider_g]').val(ui.value);
//              $('input[name=slider_c]').val(ui.value);
//    var $slider_value_t = $('#value_slider_t').html();
//    var $slider_value_g = $('#value_slider_g').html();
//    var $slider_value_c = $('#value_slider_c').html();
    
//    $('input[name=slider_t]').val($slider_value_t);
//    $('input[name=slider_g]').val($slider_value_g);
//    $('input[name=slider_c]').val($slider_value_c);
}
;

//function onSubmit() {
//    $("#submit_this").mouse
//}