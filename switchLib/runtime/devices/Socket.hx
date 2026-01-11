package switchLib.runtime.devices;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Socket {
    @:native("socketInitializeDefault")
    extern public static function socketInitializeDefault():ResultType;

    @:native("socketExit")
    extern public static function socketExit():Void;
}