package switchLib.runtime.devices;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

import cpp.*;
import switchLib.Types.ResultType;

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
class Romfs_dev {
    @:native("romfsInit")
    extern public static function romfsInit():ResultType;

    @:native("romfsExit")
    extern public static function romfsExit():ResultType;
}