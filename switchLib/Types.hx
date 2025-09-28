package switchLib;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

import cpp.*;

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("Result")
typedef ResultType = UInt32 // To avoid conflicts with Result class...