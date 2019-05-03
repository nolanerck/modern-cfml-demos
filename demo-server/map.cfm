<cfscript>

	aryUsers = [ "john@beatles.com", "paul@beatles.com", "george@beatles.com", "ringo@beatles.com" ];

	aryUsers.map( function( user )
	{
		UserService.RegisterNewUserInSystem( user );
	});

</cfscript>