package switchLib.services;

#if !HX_NX
#error "This file should only be compiled for the Nintendo Switch target"
#end

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("SetSysProductModel")
extern enum SetSysProductModel {
    @:native("SetSysProductModel_Invalid")
    SetSysProductModel_Invalid;
    @:native("SetSysProductModel_Nx")
    SetSysProductModel_Nx;
    @:native("SetSysProductModel_Copper")
    SetSysProductModel_Copper;
    @:native("SetSysProductModel_Iowa")
    SetSysProductModel_Iowa;
    @:native("SetSysProductModel_Hoag")
    SetSysProductModel_Hoag;
    @:native("SetSysProductModel_Calcio")
    SetSysProductModel_Calcio;
    @:native("SetSysProductModel_Aula")
    SetSysProductModel_Aula;
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
@:native("SetLanguage")
extern enum SetLanguage {
    @:native("SetLanguage_JA")
    SetLanguage_JA;
    @:native("SetLanguage_ENUS")
    SetLanguage_ENUS;
    @:native("SetLanguage_FR")
    SetLanguage_FR;
    @:native("SetLanguage_DE")
    SetLanguage_DE;
    @:native("SetLanguage_IT")
    SetLanguage_IT;
    @:native("SetLanguage_ES")
    SetLanguage_ES;
    @:native("SetLanguage_ZHCH")
    SetLanguage_ZHCH;
    @:native("SetLanguage_KO")
    SetLanguage_KO;
    @:native("SetLanguage_NL")
    SetLanguage_NL;
    @:native("SetLanguage_PL")
    SetLanguage_PT;
    @:native("SetLanguage_RU")
    SetLanguage_RU;
    @:native("SetLanguage_ZHTW")
    SetLanguage_ZHTW;
    @:native("SetLanguage_ENGB")
    SetLanguage_ENGB;
    @:native("SetLanguage_FRCA")
    SetLanguage_FRCA;
    @:native("SetLanguage_ES419")
    SetLanguage_ES419;
    @:native("SetLanguage_ZHHANS")
    SetLanguage_ZHHANS;
    @:native("SetLanguage_ZHHANT")
    SetLanguage_ZHHANT;
    @:native("SetLanguage_PTBR")
    SetLanguage_PTBR;
    @:native("SetLanguage_TOTAL")
    SetLanguage_Total;
}

@:buildXml('<include name="${haxelib:hx_libnx}/include.xml"/>')
@:include("switch.h")
extern class Set {
    @:native("setInitialize")
    extern public static function setInitialize():ResultType;

    @:native("setExit")
    extern public static function setExit():Void;

    @:native("setGetSystemLanguage")
    extern public static function setGetSystemLanguage(languageCode:Pointer<UInt64>):ResultType;

    @:native("setSetSystemLanguage")
    extern public static function setSetSystemLanguage(language:UInt64):ResultType;

    @:native("setMakeLanguage")
    extern public static function setMakeLanguage(languageCode:UInt64, language:Pointer<SetLanguage>):ResultType;

    @:native("setsysGetProductModel")
    extern public static function setGetSystemProductModel(productModel:Pointer<SetSysProductModel>):ResultType;
}