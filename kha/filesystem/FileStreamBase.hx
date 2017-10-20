package kha.filesystem;

// TODO (DK) handle via include paths (kha backend style)
#if flash
typedef FileStreamBase = kha.filesystem.air.FileStreamBase;
#elseif kha_debug_html5
typedef FileStreamBase = kha.filesystem.debug_html5.FileStreamBase;
#elseif kha_html5
typedef FileStreamBase = kha.filesystem.html5.FileStreamBase;
#elseif kha_kore
typedef FileStreamBase = kha.filesystem.kore.FileStreamBase;
#else
class FileStreamBase {
	public function new( fd: FileDescriptorBase ) {
	}

	public function writeString( s: String ) {
	}

	public function close() {
	}
}
#end
