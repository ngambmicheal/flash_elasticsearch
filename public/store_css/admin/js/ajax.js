$(document).ready(function(e)
{

	$(".send_ajax").click(function(e)
	{	
		e.preventDefault();
		$.ajaxSetup(
        {
			headers: {'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')}
		});
		$.ajax(
		{
			url: $(this).attr('href'),
			method: 'POST',
			data: {id :$(this).attr('id')},
			success: function(data)
			{
				console(data);
			}
		});
	});
});