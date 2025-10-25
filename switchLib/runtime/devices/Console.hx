package switchLib.runtime.devices;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Console {
    @:native("consoleInit")
    extern public static function consoleInit(console:Null<Int>):Void;

    @:native("consoleUpdate")
    extern public static function consoleUpdate(console:Null<Int>):Void;

    @:native("consoleExit")
    extern public static function consoleExit(console:Null<Int>):Void;

    @:native("consoleClear")
    extern public static function consoleClear():Void;
}