package kha.fileexplorer;

// TODO (DK) handle via include paths (kha backend style)
#if !(flash || kha_debug_html5 || kha_html5 || kha_kore)
class FileStreamBase {
	public function new( fd: FileDescriptorBase ) {
	}

	public function writeString( s: String ) {
	}

	public function close() {
	}
}
#end
