package kha.filesystem.html5;

class FileStreamBase {
	public function new( fdb: FileDescriptorBase ) {
	}
	
	public function writeString( s: String ) {
		throw 'kha.filesystem.html5.FileStreamBase.writeString not implemented';
	}

	public function close() {
		throw 'kha.filesystem.html5.FileStreamBase.close not implemented';
	}
}
