package switchLib.services;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("AppletType")
extern enum abstract AppletType(Int) to Int {
    @:native("AppletType_None") var AppletType_None;
    @:native("AppletType_Default") var AppletType_Default;
    @:native("AppletType_Application") var AppletType_Application;
    @:native("AppletType_SystemApplet") var AppletType_SystemApplet;
    @:native("AppletType_LibraryApplet") var AppletType_LibraryApplet;
    @:native("AppletType_OverlayApplet") var AppletType_OverlayApplet;
    @:native("AppletType_SystemApplication") var AppletType_SystemApplication;
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Applet {
    @:native("appletMainLoop")
    extern public static function appletMainLoop():Bool;

    @:native("appletGetAppletType")
    extern public static function appletGetAppletType():AppletType;

    @:native("appletExit")
    extern public static function appletExit():Void;

    @:native("appletLockExit")
    extern public static function appletLockExit():ResultType;

    @:native("appletUnlockExit")
    extern public static function appletUnlockExit():ResultType;
}