package kha.filesystem;

// TODO (DK) handle via include paths (kha backend style)
#if flash
typedef FileStreamBase = kha.filesystem.air.FileStreamBase;
#end

#if kha_debug_html5
typedef FileStreamBase = kha.filesystem.debug_html5.FileStreamBase;
#end

#if kha_kore
typedef FileStreamBase = kha.filesystem.kore.FileStreamBase;
#end
