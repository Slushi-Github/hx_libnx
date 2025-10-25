package switchLib.services;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

import switchLib.services.Hid;

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("IrsIrCameraHandle")
@:structAccess
extern class IrsIrCameraHandle {
    @:native("player_number")
    extern public var player_number:UInt8;

    @:native("device_type")
    extern public var device_type:UInt8;

    @:native("reserved")
    extern public var reserved:RawPointer<UInt8>;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("IrsImageTransferProcessorConfig")
@:structAccess
extern class IrsImageTransferProcessorConfig {
    @:native("exposure_time")
    extern public var exposure_time:UInt64;

    @:native("light_target")
    extern public var light_target:UInt32;

    @:native("gain")
    extern public var gain:UInt32;

    @:native("is_negative_image_used")
    extern public var is_negative_image_used:UInt8;

    @:native("reserved")
    extern public var reserved:RawPointer<UInt8>;

    @:native("format")
    extern public var format:UInt32;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("IrsImageTransferProcessorState")
@:structAccess
extern class IrsImageTransferProcessorState {
    @:native("sampling_number")
    extern public var sampling_number:UInt64;

    @:native("ambient_noise_level")
    extern public var ambient_noise_level:UInt32;

    @:native("reserved")
    extern public var reserved:RawPointer<UInt8>;   

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Irs {

    @:native("irsInitialize")
    extern public static function irsInitialize():ResultType;

    @:native("irsGetIrCameraHandle")
    extern public static function irsGetIrCameraHandle(handle:Pointer<IrsIrCameraHandle>, id:Int32):ResultType;

    @:native("irsGetDefaultImageTransferProcessorConfig")
    extern public static function irsGetDefaultImageTransferProcessorConfig(config:Pointer<IrsImageTransferProcessorConfig>):Void;

    @:native("irsRunImageTransferProcessor")
    extern public static function irsStartImageTransferProcessor(handle:IrsIrCameraHandle, config:ConstPointer<IrsImageTransferProcessorConfig>, size:SizeT):ResultType;

    @:native("irsGetImageTransferProcessorState")
    extern public static function irsGetImageTransferProcessorState(handle:IrsIrCameraHandle, buffer:Pointer<cpp.Void>, size:SizeT, state:Pointer<IrsImageTransferProcessorState>):ResultType;

    @:native("irsStopImageProcessorAsync")
    extern public static function irsStopImageProcessorAsync(handle:IrsIrCameraHandle):ResultType;
}