package switchLib.services;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Hid {
    @:native("JOYSTICK_MAX")
    extern public static var JOYSTICK_MAX:Int;

    @:native("JOYSTICK_MIN")
    extern public static var JOYSTICK_MIN:Int;

    @:native("hidGetSixAxisSensorHandles")
    extern public static function hidGetSixAxisSensorHandles(handles:Pointer<HidSixAxisSensorHandle>, total_handles:Int32, id_type:Int32, style:Int32):UInt32;

    @:native("hidStartSixAxisSensor")
    extern public static function hidStartSixAxisSensor(handle:HidSixAxisSensorHandle):Void;

    @:native("hidStopSixAxisSensor")
    extern public static function hidStopSixAxisSensor(handle:HidSixAxisSensorHandle):Void;

    @:native("hidGetSixAxisSensorStates")
    extern public static function hidGetSixAxisSensorStates(handle:HidSixAxisSensorHandle, states:Pointer<HidSixAxisSensorState>, count:SizeT):SizeT;

    @:native("hidInitializeTouchScreen")
    extern public static function hidInitializeTouchScreen():Void;

    @:native("hidGetTouchScreenStates")
    extern public static function hidGetTouchScreenStates(states:Pointer<HidTouchScreenState>, count:SizeT):SizeT;

    @:native("hidInitializeVibrationDevices")
    extern public static function hidInitializeVibrationDevices(handles:RawPointer<HidVibrationDeviceHandle>, total_handles:Int32, id:Int32, style:Int32):ResultType;

    @:native("hidSendVibrationValue")
    extern public static function hidSendVibrationValue(handle:HidVibrationDeviceHandle, value:ConstPointer<HidVibrationValue>):Void;

    @:native("hidSendVibrationValues")
    extern public static function hidSendVibrationValues(handles:RawPointer<HidVibrationDeviceHandle>, value:ConstPointer<HidVibrationValue>, count:Int32):ResultType;

    @:native("hidGetNpadControllerColorSplit")
    extern public static function hidGetNpadControllerColorSplit(id:Int32, color_left:Pointer<HidNpadControllerColor>, color_right:Pointer<HidNpadControllerColor>):ResultType;
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidNpadControllerColor")
@:structAccess
extern class HidNpadControllerColor {
    public var main:UInt32;
    public var sub:UInt32;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidNpadStyleTag")
extern class HidNpadStyleTag {
    @:native("HidNpadStyleSet_NpadStandard")
    extern public static var HidNpadStyleSet_NpadStandard:Int;

    @:native("HidNpadStyleTag_NpadHandheld")
    extern public static var HidNpadStyleTag_NpadHandheld:Int;

    @:native("HidNpadStyleTag_NpadJoyDual")
    extern public static var HidNpadStyleTag_NpadJoyDual:Int;

    @:native("HidNpadStyleTag_NpadFullKey")
    extern public static var HidNpadStyleTag_NpadFullKey:Int;
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidNpadIdType")
extern class HidNpadIdType {
    @:native("HidNpadIdType_No1")
    extern public static var HidNpadIdType_No1:Int32;

    @:native("HidNpadIdType_Handheld")
    extern public static var HidNpadIdType_Handheld:Int32;
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidSixAxisSensorHandle")
extern class HidSixAxisSensorHandle {
    @:native("type_value")
    extern public var type_value:UInt32;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidSixAxisSensorState")
extern class HidSixAxisSensorState {
    @:native("delta_time")
    extern public var delta_time:UInt64;
    @:native("sampling_number")
    extern public var sampling_number:UInt64;
    @:native("acceleration")
    extern public var acceleration:HidVector;
    @:native("angularVelocity")
    extern public var angular_velocity:HidVector;
    @:native("angle")
    extern public var angle:HidVector;
    // @:native("position")
    // extern public var direction:HidDirectionState;
    @:native("attributes")
    extern public var attributes:UInt32;
    @:native("reserved")
    extern public var reserved:UInt32;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidTouchState")
@:structAccess
extern class HidTouchState {
    @:native("delta_time")
    extern public var delta_time:UInt64;
    @:native("attributes")
    extern public var attributes:UInt32;
    @:native("finger_id")
    extern public var finger_id:UInt32;
    @:native("x")
    extern public var x:UInt32;
    @:native("y")
    extern public var y:UInt32;
    @:native("diameter_x")
    extern public var diameter_x:UInt32;
    @:native("diameter_y")
    extern public var diameter_y:UInt32;
    @:native("rotation_angle")
    extern public var rotation_angle:UInt32;
    @:native("reserved")
    extern public var reserved:UInt32;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidTouchScreenState")
@:structAccess
extern class HidTouchScreenState {
    @:native("sampling_number")
    extern public var sampling_number:UInt64;
    @:native("count")
    extern public var count:Int32;
    @:native("reserved")
    extern public var reserved:UInt32;
    @:native("touches")
    extern public var touches:RawPointer<HidTouchState>;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidVector")
extern class HidVector {
    @:native("x")
    extern public var x:Float;
    @:native("y")
    extern public var y:Float;
    @:native("z")
    extern public var z:Float;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidAnalogStickState")
@:structAccess
extern class HidAnalogStickState {
    @:native("x")
    extern public var x:Int32;
    @:native("y")
    extern public var y:Int32;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidVibrationDeviceHandle")
@:unreflective
extern class HidVibrationDeviceHandle {
    @:native("type_value")
    extern public var type_value:UInt32;
    
    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidVibrationValue")
@:structAccess
extern class HidVibrationValue {
    @:native("amp_low")
    extern public var amp_low:Float;
    @:native("freq_low")
    extern public var freq_low:Float;
    @:native("amp_high")
    extern public var amp_high:Float;
    @:native("freq_high")
    extern public var freq_high:Float;

    @:haxe.warning("-WExternWithExpr")
    public function new() {}
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("HidNpadButton")
extern class HidNpadButton {
    @:native("HidNpadButton_A")
    extern public static var HidNpadButton_A:Int;
    @:native("HidNpadButton_B")
    extern public static var HidNpadButton_B:Int;
    @:native("HidNpadButton_X")
    extern public static var HidNpadButton_X:Int;
    @:native("HidNpadButton_Y")
    extern public static var HidNpadButton_Y:Int;
    @:native("HidNpadButton_StickL")
    extern public static var HidNpadButton_StickL:Int;
    @:native("HidNpadButton_StickR")
    extern public static var HidNpadButton_StickR:Int;
    @:native("HidNpadButton_L")
    extern public static var HidNpadButton_L:Int;
    @:native("HidNpadButton_R")
    extern public static var HidNpadButton_R:Int;
    @:native("HidNpadButton_ZL")
    extern public static var HidNpadButton_ZL:Int;
    @:native("HidNpadButton_ZR")
    extern public static var HidNpadButton_ZR:Int;
    @:native("HidNpadButton_Plus")
    extern public static var HidNpadButton_Plus:Int;
    @:native("HidNpadButton_Minus")
    extern public static var HidNpadButton_Minus:Int;
    @:native("HidNpadButton_Left")
    extern public static var HidNpadButton_Left:Int;
    @:native("HidNpadButton_Up")
    extern public static var HidNpadButton_Up:Int;
    @:native("HidNpadButton_Right")
    extern public static var HidNpadButton_Right:Int;
    @:native("HidNpadButton_Down")
    extern public static var HidNpadButton_Down:Int;
    @:native("HidNpadButton_StickLLeft")
    extern public static var HidNpadButton_StickLLeft:Int;
    @:native("HidNpadButton_StickLUp")
    extern public static var HidNpadButton_StickLUp:Int;
    @:native("HidNpadButton_StickLRight")
    extern public static var HidNpadButton_StickLRight:Int;
    @:native("HidNpadButton_StickLDown")
    extern public static var HidNpadButton_StickLDown:Int;
    @:native("HidNpadButton_StickRLeft")
    extern public static var HidNpadButton_StickRLeft:Int;
    @:native("HidNpadButton_StickRUp")
    extern public static var HidNpadButton_StickRUp:Int;
    @:native("HidNpadButton_StickRRight")
    extern public static var HidNpadButton_StickRRight:Int;
    @:native("HidNpadButton_StickRDown")
    extern public static var HidNpadButton_StickRDown:Int;
    @:native("HidNpadButton_LeftSL")
    extern public static var HidNpadButton_LeftSL:Int;
    @:native("HidNpadButton_LeftSR")
    extern public static var HidNpadButton_LeftSR:Int;
    @:native("HidNpadButton_RightSL")
    extern public static var HidNpadButton_RightSL:Int;
    @:native("HidNpadButton_RightSR")
    extern public static var HidNpadButton_RightSR:Int;
    @:native("HidNpadButton_Palma")
    extern public static var HidNpadButton_Palma:Int;
    @:native("HidNpadButton_Verification")
    extern public static var HidNpadButton_Verification:Int;
    @:native("HidNpadButton_HandheldLeftB")
    extern public static var HidNpadButton_HandheldLeftB:Int;
    @:native("HidNpadButton_LagonCLeft")
    extern public static var HidNpadButton_LagonCLeft:Int;
    @:native("HidNpadButton_LagonCUp")
    extern public static var HidNpadButton_LagonCUp:Int;
    @:native("HidNpadButton_LagonCRight")
    extern public static var HidNpadButton_LagonCRight:Int;
    @:native("HidNpadButton_LagonCDown")
    extern public static var HidNpadButton_LagonCDown:Int;
    @:native("HidNpadButton_AnyLeft")
    extern public static var HidNpadButton_AnyLeft:Int;
    @:native("HidNpadButton_AnyUp")
    extern public static var HidNpadButton_AnyUp:Int;
    @:native("HidNpadButton_AnyRight")
    extern public static var HidNpadButton_AnyRight:Int;
    @:native("HidNpadButton_AnyDown")
    extern public static var HidNpadButton_AnyDown:Int;
    @:native("HidNpadButton_AnySL")
    extern public static var HidNpadButton_AnySL:Int;
    @:native("HidNpadButton_AnySR")
    extern public static var HidNpadButton_AnySR:Int;
}
