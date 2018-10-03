<cfsilent>
    <cfquery name="getActors">
        SELECT  *
        FROM tActors
    </cfquery>

    <cfset content = serializeJSON( getActors, 'struct' ) />

</cfsilent>

<cfcontent type="application/json">
<cfheader statuscode="200" statustext="OK">
<cfoutput>#content#</cfoutput>
