module Wrappers exposing (..)

-- DO NOT EDIT
-- AUTOGENERATED BY THE ELM PROTOCOL BUFFER COMPILER
-- https://github.com/tiziano88/elm-protobuf
-- source file: wrappers.proto

import Protobuf exposing (..)

import Json.Decode as JD
import Json.Encode as JE


type alias Wrappers =
    { int32ValueField : Maybe Int -- 1
    , int64ValueField : Maybe Int -- 2
    , uInt32ValueField : Maybe Int -- 3
    , uInt64ValueField : Maybe Int -- 4
    , doubleValueField : Maybe Float -- 5
    , floatValueField : Maybe Float -- 6
    , boolValueField : Maybe Bool -- 7
    , stringValueField : Maybe String -- 8
    , bytesValueField : Maybe Bytes -- 9
    }


wrappersDecoder : JD.Decoder Wrappers
wrappersDecoder =
    JD.lazy <| \_ -> decode Wrappers
        |> optional "int32ValueField" intValueDecoder
        |> optional "int64ValueField" intValueDecoder
        |> optional "uInt32ValueField" intValueDecoder
        |> optional "uInt64ValueField" intValueDecoder
        |> optional "doubleValueField" floatValueDecoder
        |> optional "floatValueField" floatValueDecoder
        |> optional "boolValueField" boolValueDecoder
        |> optional "stringValueField" stringValueDecoder
        |> optional "bytesValueField" bytesValueDecoder


wrappersEncoder : Wrappers -> JE.Value
wrappersEncoder v =
    JE.object <| List.filterMap identity <|
        [ (optionalEncoder "int32ValueField" intValueEncoder v.int32ValueField)
        , (optionalEncoder "int64ValueField" intValueEncoder v.int64ValueField)
        , (optionalEncoder "uInt32ValueField" intValueEncoder v.uInt32ValueField)
        , (optionalEncoder "uInt64ValueField" intValueEncoder v.uInt64ValueField)
        , (optionalEncoder "doubleValueField" floatValueEncoder v.doubleValueField)
        , (optionalEncoder "floatValueField" floatValueEncoder v.floatValueField)
        , (optionalEncoder "boolValueField" boolValueEncoder v.boolValueField)
        , (optionalEncoder "stringValueField" stringValueEncoder v.stringValueField)
        , (optionalEncoder "bytesValueField" bytesValueEncoder v.bytesValueField)
        ]
