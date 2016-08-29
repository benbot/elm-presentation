module Slides exposing (..)

import Html exposing (..)
import Ports exposing (..)
import Html.Events exposing (onClick, onFocus)
import Html.Attributes exposing (class, style, id, src)
import Model exposing (Model)
import Logo exposing (logo)
import Messages exposing (..)
import SlideList exposing (..)


landing : Model -> Html Msg
landing model =
    div [ onClick (Next WhatIsElm False), class "main" ]
        [ h1 [ class "header" ] [ text "Fun Functional Frontends" ]
        , div [ class "logo" ] [ logo ]
        , h1 [] [ text "in Elm" ]
        ]


whatIsElm : Model -> Html Msg
whatIsElm model =
    div [ onClick (Next ElmExample True), class "main" ]
        [ h2 [] [ text "What even is elm?" ] ]


example : Model -> Html Msg
example model =
    pre [ onClick (Next HelloWorld False), id "elm" ]
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


helloWorld : Model -> Html Msg
helloWorld model =
    div [ onClick (Next StepBack False), style [ ( "height", "100vh" ) ] ] [ text "Hello, World" ]


stepBack : Model -> Html Msg
stepBack model =
    div [ class "main", onClick (Next Traditional False) ]
        [ h2 [] [ text "Lets Take a Step Back" ]
        , h3 [] [ text "Why Functional?" ]
        ]


traditional : Model -> Html Msg
traditional model =
    div [ class "main", onClick (Next RealLife False) ]
        [ h2 [ class "image-header" ] [ text "The Traditional Model" ]
        , img [ src "/img/traditional.png" ] []
        ]


realLife : Model -> Html Msg
realLife model =
    div [ class "main", onClick (Next Brain False) ]
        [ h2 [ class "image-header" ] [ text "The Real Life Model" ]
        , img [ src "/img/cluster.png" ] []
        ]


brain : Model -> Html Msg
brain model =
    div [ class "main", onClick (Next BackToElm False) ]
        [ h1 [ class "image-header" ] [ text "Scales Poorly in Your Head" ]
        , img [ src "/img/mentalstrain.png", class "too-tall" ] []
        ]


backToElm : Model -> Html Msg
backToElm model =
    div [ class "main", onClick (Next AliasTypes True) ]
        [ h2 [] [ text "Okay now...  Back to elm" ] ]


aliasTypes : Model -> Html Msg
aliasTypes model =
    pre [ onClick (Next BasicallyShortcuts False), id "elm", class "smaller" ]
        [ code []
            [ text """
module Main exposing (..)

-- An alias type is basically a typedef

type Model = Int -- This makes `Model` an alias for an Int (integer)

-- Or something like this

type OtherModel =
    { name : String
    , age : Int
    }

-- This makes `OtherModel` an alias for the specified Record

  """
            ]
        ]


basicallyShortcuts : Model -> Html Msg
basicallyShortcuts model =
    div [ class "main" ]
        [ h3 [] [ text "Generally used for defining your app's model" ]
        , h3 [] [ text "which is the state for your entire app" ]
        ]
