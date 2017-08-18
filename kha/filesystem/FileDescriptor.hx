package kha.filesystem;

abstract FileDescriptor(FileDescriptorBase) to FileDescriptorBase {
	// public var nativePath(get, never): String;
	
	public static function browseForOpen( title: String, then: String -> Void ) : FileDescriptor {
		var fdb = new FileDescriptorBase();
		fdb._browseForOpen(title, then);
		return new FileDescriptor(fdb);
	}

	public static function browseForSave( title: String, then: String -> Void ) : FileDescriptor {
		var fdb = new FileDescriptorBase();
		fdb._browseForSave(title, then);
		return new FileDescriptor(fdb);
	}
	
	public static function resolvePath( url: String ) : FileDescriptor
		return new FileDescriptor(new FileDescriptorBase(url));
	
	function new( fdb  )
		this = fdb;
}
