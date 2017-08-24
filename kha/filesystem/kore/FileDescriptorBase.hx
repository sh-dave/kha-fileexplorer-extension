package kha.filesystem.kore;

@:headerCode('#include <Kore/FileSystem/FileDescriptor.hpp>')

//namespace Kore { namespace FileSystem {
	//struct FileDescriptor {
		//static void browseForOpen( const wchar_t * title, std::function<void (const wchar_t *)> then );
		//static void browseForSave( const wchar_t * title, std::function<void (const wchar_t *)> then );
	//};
//}}

class FileDescriptorBase {
	//public var url(default, null): String;

	public function new( ?url: String ) {
		//untyped __cpp__('impl = new Kore::FileSystem::FileDescriptorBase
	}

	public function _browseForOpen( title: String, then: String -> Void ) {
		untyped __cpp__('Kore::FileSystem::FileDescriptor::browseForOpen(title.__WCStr(), then);');
	}

	public function _browseForSave( title: String, then: String -> Void ) {
		untyped __cpp__('Kore::FileSystem::FileDescriptor::browseForSave(title.__WCStr(), then);');
	}	
}
