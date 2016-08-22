module Main exposing (..)

-- Elm Core

import Model exposing (Model)
import Html exposing (..)
import Navigation
import Routing exposing (Route(..))
import Messages exposing (..)
import Slides exposing (..)


initialModel : Route -> Model
initialModel route =
    Model route


init : Result String Route -> ( Model, Cmd Msg )
init result =
    let
        currentRoute =
            Routing.routeFromResult result
    in
        ( initialModel currentRoute, Cmd.none )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        Next slide ->
            ( { model | route = slide }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    case model.route of
        LandingSlide ->
            Slides.landing model

        WhatIsElm ->
            Slides.whatIsElm model

        NotFound ->
            div [] [ text "Wrong Slide" ]


urlUpdate : Result String Route -> Model -> ( Model, Cmd Msg )
urlUpdate result model =
    let
        currentRoute =
            Routing.routeFromResult result
    in
        ( { model | route = currentRoute }, Cmd.none )


main : Program Never
main =
    Navigation.program Routing.parser
        { init = init
        , update = update
        , view = view
        , subscriptions = always Sub.none
        , urlUpdate = urlUpdate
        }
