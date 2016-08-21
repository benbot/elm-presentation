module Slides.Landing exposing (..)

import Html exposing (Html, text, div, h1)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, style)
import Model exposing (Model)
import Logo exposing (logo)
import Messages exposing (..)
import Routing exposing (..)
import Debug


view : Model -> Html Msg
view model =
  div [ onClick (Next LandingSlide), class "main" ]
      [ h1 [ class "header" ] [ text "Fun Functional Frontends"]
      , div [ class "logo" ] [logo]
      , h1 [] [ text "in Elm"]
      ]
