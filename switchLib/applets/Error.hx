package switchLib.applets;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("ErrorCode")
@:structAccess
extern class ErrorCode {
    @:native("low")
    extern public var low:UInt32;
    @:native("desc")
    extern public var desc:UInt32;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("ErrorCommonHeader")
@:structAccess
extern class ErrorCommonHeader {
    @:native("type")
    extern public var type:UInt8;
    @:native("jumpFlag")
    extern public var jumpFlag:UInt8;
    @:native("unk_x2")
    extern public var unk_x2:RawPointer<UInt8>;
    @:native("contextFlag")
    extern public var contextFlag:UInt8;
    @:native("resultFlag")
    extern public var resultFlag:UInt8;
    @:native("contextFlag2")
    extern public var contextFlag2 :UInt8;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("ErrorCommonArg")
@:structAccess
extern class ErrorCommonArg {
    @:native("hdr")
    extern public var hdr:ErrorCommonHeader;
    @:native("errorCode")
    extern public var errorCode:ErrorCode;
    @:native("res")
    extern public var res:ResultType;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("ErrorApplicationArg")
@:structAccess
extern class ErrorApplicationArg {
    @:native("hdr")
    extern public var hdr:ErrorCommonHeader;
    @:native("errorNumber")
    extern public var errorNumber:UInt32;
    @:native("lenguageCode")
    extern public var lenguageCode:UInt64;
    @:native("dialogMessage")
    extern public var dialogMessage:RawPointer<Char>;
    @:native("fullscreenMessage")
    extern public var fullscreenMessage:RawPointer<Char>;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("ErrorApplicationConfig")
@:structAccess
extern class ErrorApplicationConfig {
    @:native("arg")
    extern public var arg:ErrorApplicationArg;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Error {
    @:native("errorApplicationCreate")
    extern public static function errorApplicationCreate(c:Pointer<ErrorApplicationConfig>, dialog_message:ConstCharStar, fullscreen_message:ConstCharStar):ResultType;

    @:native("errorApplicationSetNumber")
    extern public static function errorApplicationSetNumber(c:Pointer<ErrorApplicationConfig>, error_number:UInt32):Void;

    @:native("errorApplicationShow")
    extern public static function errorApplicationShow(c:Pointer<ErrorApplicationConfig>):Void;
}