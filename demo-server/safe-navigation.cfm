<cfscript>

	userinfo = {
		name = "Mick Ronson",
		address = "64 Abbey Road",
		city = "San Francisco",
		state = "CA"
	};

	WriteOutput( userinfo.name );
	WriteOutput( userinfo.address );
	WriteOutput( userinfo.city );
	WriteOutput( userinfo.state );

	// calls to an API for more user related info
	userInfoWithShippingDetails = getCustomerShippingInfo( userinfo );

	WriteOutput( userInfoWithShippingDetails?.orderShippedDate );

	if( StrucKeyExists( userInfoWithShippingDetails, "" ) )
	{
		WriteOutput( userInfoWithShippingDetails.orderShippedDate );
	}

</cfscript>