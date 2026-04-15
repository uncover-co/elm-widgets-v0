module Chapters.Tag exposing (chapter_)

import ElmBook.Chapter exposing (Chapter, chapter, renderComponentList)
import Html as H
import W.V0.Tag


chapter_ : Chapter x
chapter_ =
    chapter "Tag"
        |> renderComponentList
            [ ( "default", W.V0.Tag.view [] [ H.text "Default" ] )
            , ( "primary", W.V0.Tag.view [ W.V0.Tag.primary ] [ H.text "Primary" ] )
            , ( "secondary", W.V0.Tag.view [ W.V0.Tag.secondary ] [ H.text "Secondary" ] )
            , ( "success", W.V0.Tag.view [ W.V0.Tag.success ] [ H.text "Success" ] )
            , ( "warning", W.V0.Tag.view [ W.V0.Tag.warning ] [ H.text "Warning" ] )
            , ( "danger", W.V0.Tag.view [ W.V0.Tag.danger ] [ H.text "Danger" ] )
            , ( "small", W.V0.Tag.view [ W.V0.Tag.small True ] [ H.text "Small tag" ] )
            , ( "large", W.V0.Tag.view [ W.V0.Tag.large ] [ H.text "Large tag" ] )
            ]
