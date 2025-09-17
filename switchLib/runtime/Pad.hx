package switchLib.runtime;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

import cpp.*;

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

    @:native("padGetButtonsDown")
    extern public static function padGetButtonsDown(pad:ConstPointer<PadState>):UInt64;
}