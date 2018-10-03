<cfcomponent>

	<cffunction name="saveMovie" access="remote">
		<cfargument name="movieID">
		<cfargument name="title">
		<cfargument name="rating">
		<cfargument name="plotSummary">

		<cfset var movieObj = new movieapp.model.movie() />

		<cfset var args = {
			movieid = arguments.movieid,
			title = arguments.title,
			rating = arguments.rating ?. "N/R",
			plotSummary = arguments.plotSummary ? arguments.plotSummary : "not yet"
		} />

		<cfif IsNumeric( arguments.movieID ) and arguments.movieid gt 0>
			<cfset movieObj.update( argumentcollection=args ) />
		<cfelse>
			<cfset movieObj.insert( argumentcollection=args ) />
		</cfif>

	</cffunction>

</cfcomponent>