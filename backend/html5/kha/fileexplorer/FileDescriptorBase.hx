package kha.filesystem.html5;

class FileDescriptorBase {
	public var url(default, null): String;

	public function new( ?url: String ) {
		this.url = url;
	}

	public function _browseForOpen( title: String, then: String -> Void ) {
		//trace('creating filebrowser element');
		//var element = js.Browser.document.createInputElement();
		//element.type = 'file';
		//element.addEventListener("change", function( _ ) {
			//trace("change change change");
		//});
//
		//// js.Browser.document.body.appendChild(element);
		//element.dispatchEvent(new js.html.MouseEvent("click"));
		//// element.remove();
		//trace('/creating filebrowser element');
		
		throw 'kha.filesystem.html5.FileDescriptorBase._browseForOpen not implemented';
	}

	public function _browseForSave( title: String, then: String -> Void ) {
		throw 'kha.filesystem.html5.FileDescriptorBase._browseForSave not implemented';
	}	
}
