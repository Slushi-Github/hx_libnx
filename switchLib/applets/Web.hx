package switchLib.applets;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

import cpp.*;
import switchLib.Types.ResultType;

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("WebCommonConfig")
extern class WebCommonConfig {
    @:haxe.warning("-WExternWithExpr")
    public function new () {
    }
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("WebCommonReply")
extern class WebCommonReply {
    @:haxe.warning("-WExternWithExpr")
    public function new () {
    }
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Web {
    @:native("webConfigSetWhitelist")
    extern public static function webConfigSetWhitelist(config:Pointer<WebCommonConfig>, whitelist:ConstCharStar):ResultType;

    @:native("webPageCreate")
    extern public static function webPageCreate(config:Pointer<WebCommonConfig>, url:ConstCharStar):ResultType;

    @:native("webNewsCreate")
    extern public static function webNewsCreate(config:Pointer<WebCommonConfig>, url:ConstCharStar):ResultType;

    @:native("webYouTubeVideoCreate")
    extern public static function webYouTubeVideoCreate(config:Pointer<WebCommonConfig>, url:ConstCharStar):ResultType;

    @:native("webConfigShow")
    extern public static function webConfigShow(config:Pointer<WebCommonConfig>, out:Pointer<WebCommonReply>):ResultType;
}

