(function($) {

    $(document).ready(function() {

        // Actually on home page btw
        $('#home-button').click(function(){
            window.location.href = '/lessons/1';
            return false;
        });

        // Actualy on lessons page btw
        $('#start-exam-button').click(function(){
            window.location.href = '/exams/1';
            return false;
        });

    	$('#begin-exam-button').click(function(){
            document.getElementById('inline-buttons-not-during').style.display = 'none';
            document.getElementById('midlevel-content-before').style.display = 'none';
            document.getElementById('inline-buttons-during').style.display = 'inline-block';
            document.getElementById('midlevel-content-during-first').style.display = 'inline-block';
            alert('Do not reload page during exam. You will lose all progresss.');
        });

        $('#next-button-first').click(function(){
            document.getElementById('next-button-first').style.display = 'none';
            document.getElementById('next-button-second').style.display = 'inline-block';
            document.getElementById('record-button').style.display = 'inline-block';
            document.getElementById('midlevel-content-during-first').style.display = 'none';
            document.getElementById('midlevel-content-during-second').style.display = 'inline-block';
            if (count != gon.exercise_second_id) {
                count = gon.exercise_second_id - 1;
            }
        });

        $('#next-button-second').click(function(){
            document.getElementById('next-button-second').style.display = 'none';
            document.getElementById('next-button-third').style.display = 'inline-block';
            document.getElementById('record-button').style.display = 'inline-block';
            document.getElementById('midlevel-content-during-second').style.display = 'none';
            document.getElementById('midlevel-content-during-third').style.display = 'inline-block';
            if (count != gon.exercise_third_id) {
                count = gon.exercise_third_id - 1;
            }
        });

        $('#next-button-third').click(function(){
            document.getElementById('next-button-third').style.display = 'none';
            document.getElementById('next-button-fourth').style.display = 'inline-block';
            document.getElementById('record-button').style.display = 'inline-block';
            document.getElementById('midlevel-content-during-third').style.display = 'none';
            document.getElementById('midlevel-content-during-fourth').style.display = 'inline-block';
            if (count != gon.exercise_fourth_id) {
                count = gon.exercise_fourth_id - 1;
            }
        });

        $('#next-button-fourth').click(function(){
            document.getElementById('next-button-fourth').style.display = 'none';
            document.getElementById('next-button-fifth').style.display = 'inline-block';
            document.getElementById('record-button').style.display = 'inline-block';
            document.getElementById('midlevel-content-during-fourth').style.display = 'none';
            document.getElementById('midlevel-content-during-fifth').style.display = 'inline-block';
            if (count != gon.exercise_fifth_id) {
                count = gon.exercise_fifth_id - 1;
            }
        });

        // Need to display count too
        $('#next-button-fifth').click(function(){
            document.getElementById('inline-buttons-during').style.display = 'none';
            document.getElementById('inline-buttons-not-during').style.display = 'inline-block';
            document.getElementById('restart-exam-button').style.display = 'inline-block';
            document.getElementById('begin-exam-button').style.display = 'none';
            document.getElementById('midlevel-content-during-fifth').style.display = 'none';
            document.getElementById('midlevel-content-post').style.display = 'block';
        });

		$('#restart-exam-button').click(function(){
            location.reload();
        });
    });
})(jQuery);