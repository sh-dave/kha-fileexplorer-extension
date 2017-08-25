package kha.filesystem.html5;

class FileDescriptorBase {
	public var url(default, null): String;

	public function new( ?url: String ) {
		this.url = url;
	}

	public function _browseForOpen( title: String, then: String -> Void ) {
		throw 'kha.filesystem.html5.FileDescriptorBase._browseForOpen not implemented';
	}

	public function _browseForSave( title: String, then: String -> Void ) {
		throw 'kha.filesystem.html5.FileDescriptorBase._browseForSave not implemented';
	}	
}
