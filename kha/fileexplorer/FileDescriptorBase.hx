package kha.fileexplorer;

// TODO (DK) handle via include paths (kha backend style)
#if !(flash || kha_debug_html5 || kha_html5 || kha_kore)
class FileDescriptorBase {
	public function new( ?url: String ) {
	}

	public function _browseForOpen( title: String, then: String -> Void ) {
	}

	public function _browseForSave( title: String, then: String -> Void ) {
	}

}
#end
