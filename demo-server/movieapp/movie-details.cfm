<cfset qMovie = new model.movie().read( url.movieID ) />

<!--- <cfdump var="#qMovie.title#" />
<cfdump var="#qMovie?.foobar#" />
<cfabort />
--->

<cfimport taglib="./customTags" prefix="ui">

<ui:headerFooter>
	<cfoutput>
		<div class="row">
			<div class="col-md-12">
				<h2>Movie Details</h2>
			</div>

			<div class="col-md-12">
				<form name="frmMovieDetails" id="frmMovieDetails" method="post" action="./Controllers/MovieController.cfc?method=saveMovie">

					<input type="hidden" name="movieid" id="movieid" value="#qMovie.MovieID#" />

					<div class="form-group">
						<label for="title">Title:</label>
						<input type="text" class="form-control" id="title" name="title" value="#qMovie.title#">
					</div>

					<div class="form-group">
						<label for="rating">Rating:</label>
						<!--- <input type="text" class="form-control" id="rating" name="rating" value="#qMovie.rating#"> --->
						<select name="rating" id="rating">
							<option value="R" <cfif qMovie.rating eq "R">selected</cfif> >R</option>
							<option value="PG-13" <cfif qMovie.rating eq "PG-13">selected</cfif> >PG-13</option>
							<option value="PG" <cfif qMovie.rating eq "PG">selected</cfif>>PG</option>
							<option value="G" <cfif qMovie.rating eq "G">selected</cfif> >G</option>
						</select>
					</div>

					<div class="form-group">
						<label for="rating">PlotSummary:</label>
						<textarea class="form-control" name="PlotSummary" id="PlotSummary">#qMovie.PlotSummary#</textarea>
					</div>

					<button type="submit" class="btn btn-primary">Save</button>
				</form> 
			</div>

		</div>
	</cfoutput>
</ui:headerFooter>