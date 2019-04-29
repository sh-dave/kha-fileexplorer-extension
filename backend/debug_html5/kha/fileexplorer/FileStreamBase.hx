package kha.filesystem.debug_html5;

class FileStreamBase {
	static var _fs: Dynamic;
	var stream: Dynamic; // TODO (DK) WriteStream

	public function new( fdb: FileDescriptorBase ) {
		if (_fs == null) {
 			_fs = untyped __js__('require("fs")');			
		}

		stream = _fs.createWriteStream(fdb.url);

		// stream.on('open', function() {
		// 	trace('open');
		// });

		// stream.on('close', function() {
		// 	trace('close');
		// });

		// stream.on('drain', function() {
		// 	trace('drain');
		// });

		// stream.on('pipe', function() {
		// 	trace('pipe');
		// });

		// stream.on('unpipe', function() {
		// 	trace('unpipe');
		// });

		// stream.on('finish', function() {
		// 	trace('finish');
		// });

		// stream.on('error', function( err ) {
		// 	trace('error "$err"');
		// });
	}
	
	public function writeString( s: String ) {
		stream.write(s);
	}

	public function close() {
		stream.end();
		stream = null;
	}
}
