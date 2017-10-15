package kha.filesystem;

// TODO (DK) handle via include paths (kha backend style)
#if flash
typedef FileDescriptorBase = kha.filesystem.air.FileDescriptorBase;
#end

#if kha_debug_html5
typedef FileDescriptorBase = kha.filesystem.debug_html5.FileDescriptorBase;
#end

#if kha_html5
typedef FileDescriptorBase = kha.filesystem.html5.FileDescriptorBase;
#end

#if kha_kore
typedef FileDescriptorBase = kha.filesystem.kore.FileDescriptorBase;
#end

#if kha_krom
class FileDescriptorBase {
	public function new( ?url: String ) {		
	}

	public function _browseForOpen( title: String, then: String -> Void ) {		
	}

	public function _browseForSave( title: String, then: String -> Void ) {		
	}
	
}
#end
