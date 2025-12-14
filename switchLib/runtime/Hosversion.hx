package switchLib.runtime;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Hosversion {
    @:native("HOSVER_MAJOR")
    extern public static function HOSVER_MAJOR(version:UInt32):UInt32;

    @:native("HOSVER_MINOR")
    extern public static function HOSVER_MINOR(version:UInt32):UInt32;

    @:native("HOSVER_MICRO")
    extern public static function HOSVER_MICRO(version:UInt32):UInt32;

    @:native("hosversionGet")
    extern public static function hosversionGet():UInt32;
    
    @:native("hosversionGetMajor")
    extern public static function hosversionGetMajor():UInt32;
    
    @:native("hosversionGetMinor")
    extern public static function hosversionGetMinor():UInt32;
    
    @:native("hosversionIsAtmosphere")
    extern public static function hosversionIsAtmosphere():Bool;
}
