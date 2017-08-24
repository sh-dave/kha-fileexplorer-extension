# kha-filesystem-extension

- WARNING: unstable api

## targets
- [x] flash (via [air](https://code.google.com/archive/p/haxeair3))
- [x] debug html (KodeStudio)
- [ ] html
- [ ] Kore (via [kore-filesystem-extension](https://github.com/sh-dave/kore-filesystem-extension))
  - [x] windows
  - [ ] linux
  - [ ] macos
- [ ] Krom

## usage
```haxe
import kha.filesystem.FileDescriptor;
import kha.filesystem.FileStream;

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
