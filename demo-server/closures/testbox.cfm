<cfscript>
	function run(){

		describe( "Test UserLoginService", function(){
		
			UserLoginService = new com.services.UserLoginService();

			it( "should have a getLogin method", 
				function() {
				expect(	UserLoginService ).toHaveKey( "getLogin", "did NOT find the getLogin method" );
			});

			it( "should save user activity to a log file", function(){
				UserLoginService.login( "username", "password" );

				// now check to make sure the "activitylog.txt" got updated
				try
				{
					fileContents = fileRead( "activitylog.txt" ); // what if that file doesn't exist?
																  // this test will fail with an error!
				}
				catch( e )
				{
					WriteOutput( "file doesn't exist or is locked!" );
					abort;
				}
			});

			it( "should have a resetPassword method", function(){
				expect(	UserLoginService ).toHaveKey( "resetPassword", "did NOT find the resetPassword method" );
			});
		});
	}
</cfscript>
