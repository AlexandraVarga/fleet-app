
$('document').ready(function() {

	$('.table #editButton').on('click',function(event){
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

	$('.table #detailsButton').on('click',function(event){
		event.preventDefault();
		var href= $(this).attr('href');
		$.get(href, function(client, status){
			$('#detailstxtAddressEdit').val(client.address);
			$('#detailstxtCityEdit').val(client.city);
			$('#detailsddlCountryEdit').val(client.countryid);
			$('#detailstxtDetailsEdit').val(client.details);
			$('#detailstxtEmailEdit').val(client.email);
			$('#detailstxtIdEdit').val(client.id);
			$('#detailstxtMobileEdit').val(client.mobile);
			$('#detailstxtNameEdit').val(client.name);
			$('#detailstxtPhoneEdit').val(client.phone);
			$('#detailsddlStateEdit').val(client.stateid);
			$('#detailstxtWebsiteEdit').val(client.website);
		});
		$('#detailsModal').modal();
	});

	$('.table #deleteButton').on('click',function(event) {
		event.preventDefault();
		var href = $(this).attr('href');
		$('#deleteModal #delRef').attr('href', href);
		$('#deleteModal').modal();
	});
});