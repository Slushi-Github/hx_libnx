package switchLib.services;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

import cpp.*;

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidNpadStyleTag")
extern class HidNpadStyleTag {
    @:native("HidNpadStyleSet_NpadStandard")
    extern public static var HidNpadStyleSet_NpadStandard:Int;
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidNpadButton")
extern class HidNpadButton {
    @:native("HidNpadButton_Plus")
    extern public static var HidNpadButton_Plus:Int;
}