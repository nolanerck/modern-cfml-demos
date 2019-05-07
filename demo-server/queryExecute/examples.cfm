<!--- <cfquery name="qGetMovies">
	SELECT MovieId, Title, ReleaseYear
	FROM tMovies
</cfquery>

<cfset qGetMovies = QueryExecute( "SELECT MovieId, Title, ReleaseYear FROM tMovies", 
								   {}, 
								   { datasource="dsn" } ) />
--->

<cfscript>
	qGetMovies = QueryExecute( "SELECT MovieId, Title, ReleaseYear FROM tMovies
								WHERE MovieID = :ID", 
								{ ID = 5 },
								{ datasource="Movies" } );

	WriteDump( qGetMovies );

</cfscript>

