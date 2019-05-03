<cfscript>

qMovie = new com.adobe.coldfusion.query();q.setDatasource("moviedsn");

qMovie.setSQL( "SELECT * FROM tMovies
		   WHERE MovieID :ID" );

qMovie.addParam( name="ID", value="3", cfsqltype="cf_sql_int" );

rsltMovie = q.execute();

</cfscript>
