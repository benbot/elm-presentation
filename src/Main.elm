module Main exposing (..)

-- Elm Core

import Model exposing (Model)
import Html exposing (..)
import Html.App as App
import Messages exposing (..)
import SlideList exposing (..)
import Ports exposing (..)
import Slides


init : ( Model, Cmd Msg )
init =
    ( Model LandingSlide, Cmd.none )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        Next slide ->
            if slide == ElmExample then
                ( { model | route = slide }, highlight "" )
            else
                ( { model | route = slide }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    case model.route of
        LandingSlide ->
            Slides.landing model

        WhatIsElm ->
            Slides.whatIsElm model

        ElmExample ->
            Slides.example model

        StepBack ->
            Slides.stepBack model

        ScalesWell ->
            Slides.scalesWell model

        Broke ->
            Slides.broke model

        NotFound ->
            div [] [ text "Wrong Slide" ]


main : Program Never
main =
    App.program
        { init = init
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }
