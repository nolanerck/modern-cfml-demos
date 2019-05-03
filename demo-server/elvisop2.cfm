<cfscript>

	if( not IsDefined( "form.shippingAddress" ) )
	{
		billingAddress = "Same As Shipping Address";
	}

	billingAddress = form.shippingAddress ?: "Same As Shipping Address";

</cfscript>