component 
{
    variables.dbPath = ExpandPath( "/" ) & 'database/Derby/';

    this.name = "real-world-modern-cfml-demos";
    this.applicationTimeout = CreateTimeSpan( 1, 0, 0, 0 );
    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan( 0, 2, 0, 0 );
    this.sessioncookie.httponly = true;
    this.sessioncookie.timeout = "10";
    this.serialization.preserveCaseForStructKey = true;
    this.passArrayByReference = true;
    this.datasources = {
        Movies = {
            url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300", 
            driver = "Apache Derby Embedded"
        }
    };
    this.datasource = 'Movies';

    this.enablenullsupport = true;


    public boolean function onApplicationStart() { 
        return true; 
    } 

}
