module Chapters.Message exposing (chapter_)

import ElmBook.Chapter exposing (Chapter, chapter, renderComponentList)
import Html as H
import W.V0.Message


chapter_ : Chapter x
chapter_ =
    chapter "Message"
        |> renderComponentList
            [ ( "default", W.V0.Message.view [] [ H.text "A neutral message." ] )
            , ( "primary", W.V0.Message.view [ W.V0.Message.primary ] [ H.text "Heads up." ] )
            , ( "success", W.V0.Message.view [ W.V0.Message.success ] [ H.text "All good." ] )
            , ( "warning", W.V0.Message.view [ W.V0.Message.warning ] [ H.text "Careful now." ] )
            , ( "danger", W.V0.Message.view [ W.V0.Message.danger ] [ H.text "Something broke." ] )
            ]
