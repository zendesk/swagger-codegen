{-
   Swagger Petstore
   This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.

   OpenAPI spec version: 1.0.0
   Contact: apiteam@swagger.io

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.User exposing (User, userDecoder, userEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   A User who is purchasing from the pet store
-}


type alias User =
    { id : Maybe Int
    , username : Maybe String
    , firstName : Maybe String
    , lastName : Maybe String
    , email : Maybe String
    , password : Maybe String
    , phone : Maybe String
    , userStatus : Maybe Int
    }


userDecoder : Decoder User
userDecoder =
    decode User
        |> optional "id" (Decode.nullable Decode.int) Nothing
        |> optional "username" (Decode.nullable Decode.string) Nothing
        |> optional "firstName" (Decode.nullable Decode.string) Nothing
        |> optional "lastName" (Decode.nullable Decode.string) Nothing
        |> optional "email" (Decode.nullable Decode.string) Nothing
        |> optional "password" (Decode.nullable Decode.string) Nothing
        |> optional "phone" (Decode.nullable Decode.string) Nothing
        |> optional "userStatus" (Decode.nullable Decode.int) Nothing



userEncoder : User -> Encode.Value
userEncoder model =
    Encode.object
        [ ( "id", withDefault Encode.null (map Encode.int model.id) )
        , ( "username", withDefault Encode.null (map Encode.string model.username) )
        , ( "firstName", withDefault Encode.null (map Encode.string model.firstName) )
        , ( "lastName", withDefault Encode.null (map Encode.string model.lastName) )
        , ( "email", withDefault Encode.null (map Encode.string model.email) )
        , ( "password", withDefault Encode.null (map Encode.string model.password) )
        , ( "phone", withDefault Encode.null (map Encode.string model.phone) )
        , ( "userStatus", withDefault Encode.null (map Encode.int model.userStatus) )
        ]


