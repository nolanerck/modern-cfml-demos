<cfscript>
	function helloTranslator( String helloWord ) {
        return function( String name ) {
            return "#helloWord#, #name#";
        };
    }
</cfscript>