package switchLib.services;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("LblBacklightSwitchStatus")
extern enum abstract LblBacklightSwitchStatus(Int) to Int {
    @:native("LblBacklightSwitchStatus_Disabled") var LblBacklightSwitchStatus_Disabled;
    @:native("LblBacklightSwitchStatus_Enabled") var LblBacklightSwitchStatus_Enabled;
    @:native("LblBacklightSwitchStatus_Enabling") var LblBacklightSwitchStatus_Enabling;
    @:native("LblBacklightSwitchStatus_Disabling") var LblBacklightSwitchStatus_Disabling;
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Lbl {
    @:native("lblInitialize")
    extern public static function lblInitialize():ResultType;

    @:native("lblExit")
    extern public static function lblExit():Void;

    @:native("lblLoadCurrentSetting")
    extern public static function lblLoadCurrentSetting():ResultType;

    @:native("lblSetCurrentBrightnessSetting")
    extern public static function lblSetCurrentBrightnessSetting(brightness:Float):ResultType;

    @:native("lblGetCurrentBrightnessSetting")
    extern public static function lblGetCurrentBrightnessSetting(out_value:Pointer<Float>):ResultType;

    @:native("lblApplyCurrentBrightnessSettingToBacklight")
    extern public static function lblApplyCurrentBrightnessSettingToBacklight():ResultType;

    @:native("lblGetBrightnessSettingAppliedToBacklight")
    extern public static function lblGetBrightnessSettingAppliedToBacklight(out_value:Pointer<Float>):ResultType;

    @:native("lblEnableDimming")
    extern public static function lblEnableDimming():ResultType;

    @:native("lblDisableDimming")
    extern public static function lblDisableDimming():ResultType;

    @:native("lblIsDimmingEnabled")
    extern public static function lblIsDimmingEnabled(out_value:Pointer<Bool>):ResultType;

    @:native("lblSwitchBacklightOn")
    extern public static function lblSwitchBacklightOn(fade_time:UInt64):ResultType;

    @:native("lblSwitchBacklightOff")
    extern public static function lblSwitchBacklightOff(fade_time:UInt64):ResultType;

    @:native("lblGetBacklightSwitchStatus")
    extern public static function lblGetBacklightSwitchStatus(out_value:Pointer<LblBacklightSwitchStatus>):ResultType;
}