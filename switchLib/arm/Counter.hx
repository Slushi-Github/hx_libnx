package switchLib.arm;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch/arm/counter.h")
extern class Counter {
    @:native("armGetSystemTick")
    extern public static function armGetSystemTick():UInt64;

    @:native("armTicksToNs")
    extern public static function armTicksToNs(ticks:UInt64):UInt64;
}