(function($) {

    $(document).ready(function() {

        // This is helps to cycle through words
        var count = 0

        try {
            var recognition = new webkitSpeechRecognition();
        } catch(e) {
            var recognition = Object;
        }
        recognition.continuous = false;
        recognition.interimResults = false;

        var interimResult = '';
        var textArea = $('#speech-page-content');
        var textAreaID = 'speech-page-content';

        $('.speech-mic').click(function(){
            startRecognition();
        });

        $('.speech-mic-works').click(function(){
            recognition.stop();
        });

        var startRecognition = function() {
            $('.speech-content-mic').removeClass('speech-mic').addClass('speech-mic-works');
            textArea.focus();
            recognition.start();
            alert(gon.exercises[count])
        };

        recognition.onresult = function (event) {
            var pos = textArea.getCursorPosition() - interimResult.length;
			textArea.val(textArea.val().replace(interimResult, ''));
			interimResult = '';
			textArea.setCursorPosition(pos);
			// Need to add ability to show word that they need to translate - embedded ruby

			// This code writes the word - may not be necessary in later iterations
			for (var i = event.resultIndex; i < event.results.length; ++i) {
			    if (event.results[i].isFinal) {
			        insertAtCaret(textAreaID, event.results[i][0].transcript);
			    } else {
			        isFinished = false;
			        insertAtCaret(textAreaID, event.results[i][0].transcript + '\u200B');
			        interimResult += event.results[i][0].transcript + '\u200B';
			    }
			}
			// This code checks the code
			// This will need to be abstracted - embedded ruby
            // First attempt at implementing embedded ruby
			for (var i = event.resultIndex; i < event.results.length; ++i) {
				if (event.results[i].isFinal && event.results[i][0].transcript == gon.exercises[count]) {
					alert('it worked!!!!!');
				} else {
					alert('poop');
				}
			}
        };

        recognition.onend = function() {
            $('.speech-content-mic').removeClass('speech-mic-works').addClass('speech-mic');
            count++;
        };
    });
})(jQuery);