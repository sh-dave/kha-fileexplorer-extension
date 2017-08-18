package kha.filesystem;

abstract FileStream(FileStreamBase) {
	public function new( fd: FileDescriptorBase )
		this = new FileStreamBase(fd);
	
	public function writeString( s: String )
		this.writeString(s);
		
	public function close()
		this.close();
}
