module Slides exposing (..)

import Html exposing (Html, text, div, h1)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, style)
import Model exposing (Model)
import Logo exposing (logo)
import Messages exposing (..)
import Routing exposing (..)


landing : Model -> Html Msg
landing model =
    div [ onClick (Next WhatIsElm), class "main" ]
        [ h1 [ class "header" ] [ text "Fun Functional Frontends" ]
        , div [ class "logo" ] [ logo ]
        , h1 [] [ text "in Elm" ]
        ]


whatIsElm : Model -> Html Msg
whatIsElm model =
    div [ class "main" ]
        [ h1 [] [ text "What even is elm?" ] ]


example : Model -> Html Msg
example model =
    div [] [ text "hello world" ]
