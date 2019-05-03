<cfscript>

	if( not IsDefined( "foo" ) )
	{
		answer = "bar";
	}

	answer = foo ?: "bar";

	WriteOutput( "answer is: " & answer );

</cfscript>