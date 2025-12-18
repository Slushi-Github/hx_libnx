package switchLib.applets;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("SwkbdConfig")
@:structAccess
extern class SwkbdConfig {
    @:haxe.warning("-WExternWithExpr")
    public function new() {};
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Swkbd {
    @:native("swkbdCreate")
    extern public static function swkbdCreate(c:Pointer<SwkbdConfig>, max_dictwords:Int32):ResultType;

    @:native("swkbdClose")
    extern public static function swkbdClose(c:Pointer<SwkbdConfig>):Void;

    @:native("swkbdConfigMakePresetDefault")
    extern public static function swkbdConfigMakePresetDefault(c:Pointer<SwkbdConfig>):Void;

    @:native("swkbdConfigMakePresetPassword")
    extern public static function swkbdConfigMakePresetPassword(c:Pointer<SwkbdConfig>):Void;

    @:native("swkbdConfigMakePresetUserName")
    extern public static function swkbdConfigMakePresetUserName(c:Pointer<SwkbdConfig>):Void;

    @:native("swkbdConfigSetOkButtonText")
    extern public static function swkbdConfigSetOkButtonText(c:Pointer<SwkbdConfig>, str:ConstCharStar):Void;

    @:native("swkbdConfigSetHeaderText")
    extern public static function swkbdConfigSetHeaderText(c:Pointer<SwkbdConfig>, str:ConstCharStar):Void;

    @:native("swkbdConfigSetGuideText")
    extern public static function swkbdConfigSetGuideText(c:Pointer<SwkbdConfig>, str:ConstCharStar):Void;

    @:native("swkbdConfigSetSubText")
    extern public static function swkbdConfigSetSubText(c:Pointer<SwkbdConfig>, str:ConstCharStar):Void;

    @:native("swkbdConfigSetInitialText")
    extern public static function swkbdConfigSetInitialText(c:Pointer<SwkbdConfig>, str:ConstCharStar):Void;

    @:native("swkbdConfigSetStringLenMax")
    extern public static function swkbdConfigSetStringLenMax(c:Pointer<SwkbdConfig>, pos:UInt32):Void;

    @:native("swkbdConfigSetStringLenMin")
    extern public static function swkbdConfigSetStringLenMin(c:Pointer<SwkbdConfig>, type:UInt32):Void;

    @:native("swkbdShow")
    extern public static function swkbdShow(c:Pointer<SwkbdConfig>, out_string:Pointer<Char>, out_string_size:SizeT):ResultType;

    @:native("swkbdConfigSetBlurBackground")
    extern public static function swkbdConfigSetBlurBackground(c:Pointer<SwkbdConfig>, blurBackground:UInt8):Void;
}