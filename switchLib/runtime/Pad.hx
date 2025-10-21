package switchLib.runtime;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

import cpp.*;

import switchLib.services.Hid;

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("PadState")
extern class PadState {
    @:haxe.warning("-WExternWithExpr")
    public function new () {
    }
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Pad {
    @:native("padConfigureInput")
    extern public static function padConfigureInput(max_players:UInt32, style_set:UInt32):Void;

    @:native("padInitializeDefault")
    extern public static function padInitializeDefault(pad:Pointer<PadState>):Void;

    @:native("padUpdate")
    extern public static function padUpdate(pad:Pointer<PadState>):Void;

    @:native("padGetButtons")
    extern public static function padGetButtons(pad:ConstPointer<PadState>):UInt64;

    @:native("padGetButtonsDown")
    extern public static function padGetButtonsDown(pad:ConstPointer<PadState>):UInt64;

    @:native("padGetButtonsUp")
    extern public static function padGetButtonsUp(pad:ConstPointer<PadState>):UInt64;

    @:native("padGetStickPos")
    extern public static function padGetStickPos(pad:ConstPointer<PadState>, stick:Int):HidAnalogStickState;

    @:native("padIsHandheld")
    extern public static function padIsHandheld(pad:ConstPointer<PadState>):Bool;

    @:native("padGetStyleSet")
    extern public static function padGetStyleSet(pad:ConstPointer<PadState>):Bool;
}