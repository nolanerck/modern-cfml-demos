<cfsilent>
    <cfquery name="getMovies">
        SELECT  *
        FROM tMovies
    </cfquery>

    <cfset content = serializeJSON( getMovies, 'struct' ) />

</cfsilent>

<cfcontent type="application/json">
<cfheader statuscode="200" statustext="OK">
<cfoutput>#content#</cfoutput>
