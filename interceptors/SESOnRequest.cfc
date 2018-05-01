component extends="coldbox.system.Interceptor" {
    
    property name="includeIndex" inject="coldbox:setting:includeIndex@ses-on-request";
    
    public void function preProcess( event, interceptData ) {
        var appMapping = getSetting( "AppMapping" );
        var SESBaseURL = "https://";
        SESBaseURL &= CGI.http_host;
        if( len( appMapping ) ) {
            SESBaseURL &= "/" & appMapping;         
        }
        if( includeIndex ) {
            SESBaseURL &= "/index.cfm";
        }
        event.setSESBaseURL( SESBaseURL );
    }

}
