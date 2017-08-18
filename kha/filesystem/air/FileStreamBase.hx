package kha.filesystem.air;

import flash.filesystem.FileStream;

class FileStreamBase extends FileStream {
	public function new( file: FileBase ) {
		super();
		open(file, flash.filesystem.FileMode.WRITE);
	}
	
	public function writeString( s: String )
		super.writeUTFBytes(s);
}
