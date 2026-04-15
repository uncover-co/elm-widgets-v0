module Chapters.Divider exposing (chapter_)

import ElmBook.Chapter exposing (Chapter, chapter, renderComponentList)
import Html as H
import Html.Attributes as HA
import W.V0.Divider


chapter_ : Chapter x
chapter_ =
    chapter "Divider"
        |> renderComponentList
            [ ( "horizontal"
              , H.div [ HA.style "width" "320px" ]
                    [ W.V0.Divider.view [] [] ]
              )
            , ( "with label"
              , H.div [ HA.style "width" "320px" ]
                    [ W.V0.Divider.view [] [ H.text "or" ] ]
              )
            , ( "light"
              , H.div [ HA.style "width" "320px" ]
                    [ W.V0.Divider.view [ W.V0.Divider.light ] [] ]
              )
            , ( "vertical"
              , H.div [ HA.style "height" "40px", HA.style "display" "inline-flex" ]
                    [ W.V0.Divider.view [ W.V0.Divider.vertical ] [] ]
              )
            ]
