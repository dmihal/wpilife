# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
    $('.vote').click( ->
        #alert("voted");
        $.ajax({
            url:    '/parties/vote',
            type: 'POST',
            data:   {id: 1, vote: this.dataset.dir},
            success: (response)->
                alert(response);    
        });
        false;
    );
