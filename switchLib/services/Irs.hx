package switchLib.services;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

import cpp.UInt8;
import cpp.UInt32;
import cpp.UInt64;
import cpp.Int32;
import cpp.SizeT;
import cpp.Pointer;
import cpp.ConstPointer;
import cpp.RawPointer;
import switchLib.Types.ResultType;

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class IrsImageTransferProcessorFormat {
    @:native("IrsImageTransferProcessorFormat_320x240")
    public static var IrsImageTransferProcessorFormat_320x240:UInt32;

    @:native("IrsImageTransferProcessorFormat_160x120")
    public static var IrsImageTransferProcessorFormat_160x120:UInt32;

    @:native("IrsImageTransferProcessorFormat_80x60")
    public static var IrsImageTransferProcessorFormat_80x60:UInt32;

    @:native("IrsImageTransferProcessorFormat_40x30")
    public static var IrsImageTransferProcessorFormat_40x30:UInt32;

    @:native("IrsImageTransferProcessorFormat_20x15")
    public static var IrsImageTransferProcessorFormat_20x15:UInt32;
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("IrsIrCameraHandle")
@:structAccess
extern class IrsIrCameraHandle {
    @:native("player_number")
    public var player_number:UInt8;

    @:native("device_type")
    public var device_type:UInt8;

    @:native("reserved")
    public var reserved:RawPointer<UInt8>;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("IrsImageTransferProcessorConfig")
@:structAccess
extern class IrsImageTransferProcessorConfig {
    @:native("exposure_time")
    public var exposure_time:UInt64;

    @:native("light_target")
    public var light_target:UInt32;

    @:native("gain")
    public var gain:UInt32;

    @:native("is_negative_image_used")
    public var is_negative_image_used:UInt8;

    @:native("reserved")
    public var reserved:RawPointer<UInt8>;

    @:native("format")
    public var format:UInt32;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("IrsImageTransferProcessorState")
@:structAccess
extern class IrsImageTransferProcessorState {
    @:native("sampling_number")
    public var sampling_number:UInt64;

    @:native("ambient_noise_level")
    public var ambient_noise_level:UInt32;

    @:native("reserved")
    public var reserved:RawPointer<UInt8>;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Irs {
    @:native("irsInitialize")
    public static function irsInitialize():ResultType;

    @:native("irsExit")
    public static function irsExit():Void;

    @:native("irsGetIrCameraHandle")
    public static function irsGetIrCameraHandle(handle:Pointer<IrsIrCameraHandle>, id:Int32):ResultType;

    @:native("irsGetDefaultImageTransferProcessorConfig")
    public static function irsGetDefaultImageTransferProcessorConfig(config:Pointer<IrsImageTransferProcessorConfig>):Void;

    @:native("irsRunImageTransferProcessor")
    public static function irsRunImageTransferProcessor(handle:IrsIrCameraHandle, config:ConstPointer<IrsImageTransferProcessorConfig>, size:SizeT):ResultType;

    @:native("irsGetImageTransferProcessorState")
    public static function irsGetImageTransferProcessorState(handle:IrsIrCameraHandle, buffer:Pointer<cpp.Void>, size:SizeT, state:Pointer<IrsImageTransferProcessorState>):ResultType;

    @:native("irsStopImageProcessor")
    public static function irsStopImageProcessor(handle:IrsIrCameraHandle):ResultType;

    @:native("irsStopImageProcessorAsync")
    public static function irsStopImageProcessorAsync(handle:IrsIrCameraHandle):ResultType;

    @:native("irsCheckFirmwareUpdateNecessity")
    public static function irsCheckFirmwareUpdateNecessity(handle:IrsIrCameraHandle, out:Pointer<Bool>):ResultType;
}