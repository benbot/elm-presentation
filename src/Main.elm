module Main exposing (..)

-- Elm Core

import Model exposing (Model)
import Html exposing (..)
import Html.App as App
import Messages exposing (..)
import SlideList exposing (..)
import Ports exposing (..)
import Slides
import Debug
import Task


init : ( Model, Cmd Msg )
init =
    ( Model LandingSlide, Cmd.none )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        Next slide render ->
            if render then
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

        HelloWorld ->
            Slides.helloWorld model

        StepBack ->
            Slides.stepBack model

        ScalesWell ->
            Slides.stepBack model

        Traditional ->
            Slides.traditional model

        RealLife ->
            Slides.realLife model

        Brain ->
            Slides.brain model

        BackToElm ->
            Slides.backToElm model

        AliasTypes ->
            Slides.aliasTypes model

        BasicallyShortcuts ->
            Slides.basicallyShortcuts model

        UnionTypes ->
            div [] []

        BetterExplination ->
            div [] []

        DataBoom ->
            div [] []

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
