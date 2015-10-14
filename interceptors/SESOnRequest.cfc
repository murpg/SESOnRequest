component extends='coldbox.system.Interceptor' {

    public void function preProcess(event, interceptData) {
        setSetting('HTMLBaseUrl', 'http://' & CGI.HTTP_HOST);
        setSetting('SESBaseUrl', 'http://' & CGI.HTTP_HOST);
    }

}
