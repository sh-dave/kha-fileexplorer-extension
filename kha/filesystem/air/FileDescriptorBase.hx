package kha.filesystem.air;

import flash.events.Event;
import flash.filesystem.File; // requires air3 on haxelib and only runs with air

class FileDescriptorBase extends File {
	public inline function _browseForOpen( title: String, then: String -> Void ) {
		var self = this;

		function onSelect( event: Event ) {
			self.removeEventListener(Event.SELECT, onSelect);
			then(self.nativePath);
		}

		addEventListener(Event.SELECT, onSelect);
		browseForOpen(title);
	}
	
	public inline function _browseForSave( title: String, then: String -> Void ) {
		var self = this;

		function onSelect( event: Event ) {
			self.removeEventListener(Event.SELECT, onSelect);
			then(self.nativePath);
		}

		addEventListener(Event.SELECT, onSelect);
		browseForSave(title);
	}
}
