package switchLib;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

import cpp.*;
import switchLib.Types.ResultType;

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Result {
    @:native("R_SUCCEEDED")
    extern public static function R_SUCCEEDED(res:ResultType):Bool;

    @:native("R_FAILED")
    extern public static function R_FAILED(res:ResultType):Bool;
}