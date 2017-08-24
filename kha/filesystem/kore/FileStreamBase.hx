package kha.filesystem.kore;

class FileStreamBase {
	public function new( fdb: FileDescriptorBase ) {
		throw 'kha.filesystem.kore.FileStreamBase.new not implemented';
	}
	
	public function writeString( s: String ) {
		throw 'kha.filesystem.kore.FileStreamBase.writeString not implemented';
	}

	public function close() {
		throw 'kha.filesystem.kore.FileStreamBase.close not implemented';
	}
}
