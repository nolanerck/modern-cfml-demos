<cfcomponent>

	<cffunction name="init" returntype="movie">
		<cfreturn this />
	</cffunction>

	<cffunction name="read" returntype="query" access="public">
		<cfargument name="movieID" required="false" default="0" />

		<cfset var qMovie = "" />

		<cfif arguments.movieID gt 0>
			<cfset qMovie = queryExecute( "SELECT * FROM tMovies WHERE MovieID = :movieID", 
										   { 
										   	movieid = { value = arguments.movieid , 
										   			    cfsqltype = "cf_sql_integer" 
										   			  }
										   } ) />
		<cfelse>
			<cfset qMovie = queryExecute( "SELECT * FROM tMovies" ) />
		</cfif>

		<!--- Before queryExecute() existed 
			qMovie = new com.adobe.coldfusion.query();
			qMovie.setDatasource( "movies" );
			qMovie.setSQL( "SELECT * FROM tMovies WHERE MovieID = :movieID" );
			qMovie.addParam( name="MovieID", value="#arguments.movieID#", cfsqltype="cf_sql_varchar" );
			r = qMovie.execute();
		--->
		<cfreturn qMovie />
	</cffunction>

	<cffunction name="update" returntype="void" access="public">
		<cfargument name="movieID">
		<cfargument name="title">
		<cfargument name="rating">
		<cfargument name="plotSummary">

		<cfset var qUpdate = "" />

		<cfquery name="qUpdate">
			UPDATE tMovies
			   SET title 	   = <cfqueryparam value="#arguments.title#" />,
			       rating 	   = <cfqueryparam value="#arguments.rating#" />,
			       plotSummary = <cfqueryparam value="#arguments.plotSummary#" />
			WHERE movieID = <cfqueryparam value="#arguments.movieID#" />
		</cfquery>

		<!--- Now save to a log file that the record was changed. --->
		<cfset runAsync( updateActivityLog( "Record was changed in tMovies table" ) ) />
		<cfset runAsync( emailSecurityTeam( "Record was changed in tMovies table" ) ) />

	</cffunction>

	<cffunction name="updateActivityLog" access="private">
		<cfargument name="logMessage" type="string" />

		<cfset var pathtoLogFile = "../logs/movie-log.txt" />

		<cfif fileExists( pathtoLogFile )>
			<cflog file="#pathtoLogFile#" text="#arguments.logMessage#" />
		</cfif>
	</cffunction>

</cfcomponent>