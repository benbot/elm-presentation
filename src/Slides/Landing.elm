module Slides.Landing exposing (..)

import Html exposing (Html, text, div)
import Model exposing (Model)


view : Model -> Html msg
view model =
    div [] [ text "landing slide" ]
