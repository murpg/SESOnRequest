component {

	// Module Properties
	this.title 				= "SESOnRequest";
	this.author 			= "Eric Peterson";
	this.webURL 			= "";
	this.description 		= "Sets the SES and HTML base urls on each request";
	this.version			= "1.0.0";
	this.entryPoint			= "SESOnRequest";
	this.modelNamespace		= "SESOnRequest";
	this.cfmapping			= "SESOnRequest";
	this.dependencies 		= [];

	function configure() {
		interceptors = [
			{ name='SESOnRequest', class='#moduleMapping#.interceptors.SESOnRequest' }
		];
	}

}
