# SESOnRequest

### Sets the SES and HTML base url on each request in a ColdBox application

This package was created to solve the problem of a ColdBox application using the first HTTP_HOST that came its way for all links in the application.  (The specific instance was being pinged by a health check from the base server before requests came in through the DNS.)  It sets both the SESBaseUrl and the HTMLBaseUrl on each request.

## Installation
Couldn't be easier.  
```
box install ses-on-request
```

## Usage
That's it.  Installing it registers the interceptor.  You are good to go.

## Configuration

The interceptor can be configured to include `index.cfm` in the URL which is required if you're not using URL rewriting.  Place the following in your app's `/config/Coldbox.cfc` to override the `includeIndex` setting.  This requires ColdBox `4.3.0`.

```
moduleSettings = {
  "SESOnRequest" = {
    includeIndex = true
  }
};
```
