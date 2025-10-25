package switchLib.runtime;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Nxlink {
    @:native("__nxlink_host")
    @:structAccess
    extern public static var nxlink_host:Int;

    @:native("nxlinkStdio")
    extern public static function nxlinkStdio():Int;
}