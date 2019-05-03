<cfscript>

	aryUsers = [ "John", "Paul", "George", "Ringo" ];

	WriteOutput( "We have #ArrayLen( aryUsers )# users in the system." );

	WriteOutput( "We have #aryUsers.len()# users in the system." );

</cfscript>
