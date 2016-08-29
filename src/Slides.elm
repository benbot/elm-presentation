module Slides exposing (..)

import Html exposing (..)
import Ports exposing (..)
import Html.Events exposing (onClick, onFocus)
import Html.Attributes exposing (class, style, id)
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
    pre [ onClick (Next StepBack), id "elm" ]
        [ code []
            [ text """
module Main exposing (..)

import Html exposing (Html, div, text)

main : Html a
main =
  div [] [ text "Hello, World" ]
  """
            ]
        ]


stepBack : Model -> Html Msg
stepBack model =
    div [ class "main" ]
        [ h2 [] [ text "Lets Take a Step Back" ]
        , h3 [] [ text "Why Functional?" ]
        ]


scalesWell : Model -> Html Msg
scalesWell model =
    div [ class "main" ]
        []
