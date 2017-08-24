package kha.filesystem;

// TODO (DK) handle via include paths (kha backend style)
#if flash
typedef FileDescriptorBase = kha.filesystem.air.FileDescriptorBase;
#end

#if kha_debug_html5
typedef FileDescriptorBase = kha.filesystem.debug_html5.FileDescriptorBase;
#end

#if kha_kore
typedef FileDescriptorBase = kha.filesystem.kore.FileDescriptorBase;
#end
