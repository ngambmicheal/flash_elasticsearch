$(document).ready(function()
{
	$("#category_nav_ul_category").click(function()
	{
		$("#category_nav_div").slideToggle(400);
	});

	/*$(".category").hover(function()
	{
		var cat = $(this).attr('id');
		//alert(cat);
		$("#sub_cat_"+cat).toggleClass('display');
	});*/
});