<cfscript>
    var q = actorService.getAll();

    var data = q.reduce( function( prev, row )
    {
        return prev.append( actor );
    }, [] );

    // renderData() is a FW/1 utility function to serialize/render data for 
    // REST APIs
    fw.renderData().data( data ).type( 'json');
</cfscript>
