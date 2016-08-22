module Routing exposing (..)

import Navigation
import String
import UrlParser exposing (..)


type Route
    = LandingSlide
    | WhatIsElm
    | NotFound


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ format LandingSlide (s "")
        , format WhatIsElm (s "/functional")
        ]


hashParser : Navigation.Location -> Result String Route
hashParser location =
    location.hash
        |> String.dropLeft 1
        |> parse identity matchers


parser : Navigation.Parser (Result String Route)
parser =
    Navigation.makeParser hashParser


routeFromResult : Result String Route -> Route
routeFromResult result =
    case result of
        Ok route ->
            route

        Err string ->
            NotFound
