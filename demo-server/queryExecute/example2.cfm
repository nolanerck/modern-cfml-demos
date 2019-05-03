<cfscript>

qGetMovies = QueryExecute( "SELECT MovieId, Title, ReleaseYear FROM tMovies
							WHERE MovieID = :ID", 
							{ ID = 123 } );

</cfscript>
