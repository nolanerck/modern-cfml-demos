<cfscript>

	BillingAddress = "123 Main Street";
	ShippingAddress = "";

	if( Len( ShippingAddress ) gt 0 )
	{
		AddressUsed = ShippingAddress;
	}
	else 
	{
		AddressUsed = BillingAddress;	
	}

	AddressUsed = Len( ShippingAddress ) gt 0 ? ShippingAddress : BillingAddress;
	
</cfscript>