

(function($) {
	$(document).ready(function() {

		// If an input is disabled, look for it's corresponding label and add the disabled class to the label

		$('input:disabled, select:disabled').each(function() {
			// get the ID of the input
			var attribute_val = $( this ).attr('id');
			// use the ID to search for a label with a 'for' attribute referencing the ID
			$('label[for=' + attribute_val + ']').addClass('disabled');
		});

	});
}(jQuery));
