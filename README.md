# kha-fileexplorer-extension

## targets

- [x] flash (via [air](https://code.google.com/archive/p/haxeair3))
- [x] debug html (KodeStudio)
- [ ] html
- [ ] Kore (via [kore-fileexplorer-extension](https://github.com/sh-dave/kore-fileexplorer-extension))
  - [x] windows
  - [ ] linux
  - [ ] macos
- [ ] Krom

## usage

```haxe
import kha.fileexplorer.FileDescriptor;
import kha.fileexplorer.FileStream;

function browseForAnExistingFile() {
	FileDescriptor.browseForOpen('Open something', function( url: String ) {
		trace('loading "$url"');

		kha.Assets.loadBlobFromPath(path, function( b ) {
			trace(Std.string(b));
		});
	});
}

function browseForSomethingToSave() {
	FileDescriptor.browseForSave('Save something', function( url: String ) {
		var stream = new FileStream(FileDescriptor.resolvePath(url));
		stream.writeString('Hello');
		stream.writeString('World');
		stream.close();
	});
);

```
