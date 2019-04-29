package kha.filesystem.debug_html5;

class FileDescriptorBase {
	public var url(default, null): String;

	public function new( ?url: String ) {
		this.url = url;
	}

	// TODO (DK) why selectedFile[0]?
	public function _browseForOpen( title: String, then: String -> Void ) {
		untyped __js__('
			const { dialog } = require("electron").remote;
			const selectedFile = dialog.showOpenDialog({ properties: ["openFile"] });

			if (selectedFile) {
				then(selectedFile[0]);
			}
		');		
	}

	// TODO (DK) why NOT selectedFile[0]?
	public function _browseForSave( title: String, then: String -> Void ) {
		untyped __js__('
			const { dialog } = require("electron").remote;
			const selectedFile = dialog.showSaveDialog({ properties: ["saveFile"] });

			if (selectedFile) {
				then(selectedFile);
			}
		');		
	}	
}
