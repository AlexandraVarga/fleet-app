/**
 *
 */

$('document').ready(function() {

	$('.table .btn-primary').on('click',function(event){
		event.preventDefault();
		var href= $(this).attr('href');
		$.get(href, function(client, status){
			$('#txtAddressEdit').val(client.address);
			$('#txtCityEdit').val(client.city);
			$('#ddlCountryEdit').val(client.countryid);
			$('#txtDetailsEdit').val(client.details);
			$('#txtEmailEdit').val(client.email);
			$('#txtIdEdit').val(client.id);
			$('#txtMobileEdit').val(client.mobile);
			$('#txtNameEdit').val(client.name);
			$('#txtPhoneEdit').val(client.phone);
			$('#ddlStateEdit').val(client.stateid);
			$('#txtWebsiteEdit').val(client.website);
		});
		$('#editModal').modal();
	});

	/**
	 *
	 */

	$('document').ready(function() {

		$('.table .btn-primary').on('click',function(event){
			event.preventDefault();
			var href= $(this).attr('href');
			$.get(href, function(client, status){
				$('#txtAddressEdit').val(client.address);
				$('#txtCityEdit').val(client.city);
				$('#ddlCountryEdit').val(client.countryid);
				$('#txtDetailsEdit').val(client.details);
				$('#txtEmailEdit').val(client.email);
				$('#txtIdEdit').val(client.id);
				$('#txtMobileEdit').val(client.mobile);
				$('#txtNameEdit').val(client.name);
				$('#txtPhoneEdit').val(client.phone);
				$('#ddlStateEdit').val(client.stateid);
				$('#txtWebsiteEdit').val(client.website);
			});
			$('#editModal').modal();
		});

		$('.table #deleteButton').on('click',function(event) {
			event.preventDefault();
			var href = $(this).attr('href');
			$('#deleteModal #delRef').attr('href', href);
			$('#deleteModal').modal();
		});
	});

	$('.table #deleteButton').on('click',function(event) {
		event.preventDefault();
		var href = $(this).attr('href');
		$('#deleteModal #delRef').attr('href', href);
		$('#deleteModal').modal();
	});
});