<!--- let's load our movies from the api --->

<cfimport taglib="./customTags" prefix="ui">

<cfset qMovies = new model.movie().read() />

<ui:headerFooter>
	<cfoutput>
		<div class="row">
			<div class="col-md-12">
				<h2>Movies</h2>
			</div>
			<div class="col-md-12">
				<ol>
					<cfloop query="qMovies">
						<li><a href="movie-details.cfm?movieID=#qMovies.movieID#">#qMovies.title#</a> (Rating: #qMovies.rating#)</li>
					</cfloop>
				</ol>
			</div>
		</div>
	</cfoutput>
</ui:headerFooter>
