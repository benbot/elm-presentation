module Slides exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, style)
import Model exposing (Model)
import Logo exposing (logo)
import Messages exposing (..)
import SlideList exposing (..)


landing : Model -> Html Msg
landing model =
    div [ onClick (Next WhatIsElm), class "main" ]
        [ h1 [ class "header" ] [ text "Fun Functional Frontends" ]
        , div [ class "logo" ] [ logo ]
        , h1 [] [ text "in Elm" ]
        ]


whatIsElm : Model -> Html Msg
whatIsElm model =
    div [ onClick (Next ElmExample), class "main" ]
        [ h1 [] [ text "What even is elm?" ] ]


example : Model -> Html Msg
example model =
    div [ class "main" ]
        [ pre []
            [ code [ class "elm" ]
                [ text """
                module Main exposing (..)

                import Html exposing (Html, div, text)

                main : Html a
                main =
                  div [] [ text "Hello, World" ]
            """
                ]
            ]
        ]
