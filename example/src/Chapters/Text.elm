module Chapters.Text exposing (chapter_)

import ElmBook.Chapter exposing (Chapter, chapter, renderComponentList)
import Html as H
import W.V0.Text


chapter_ : Chapter x
chapter_ =
    chapter "Text"
        |> renderComponentList
            [ ( "default", W.V0.Text.view [] [ H.text "The quick brown fox." ] )
            , ( "bold", W.V0.Text.view [ W.V0.Text.bold ] [ H.text "The quick brown fox." ] )
            , ( "semibold", W.V0.Text.view [ W.V0.Text.semibold ] [ H.text "The quick brown fox." ] )
            , ( "light", W.V0.Text.view [ W.V0.Text.light ] [ H.text "The quick brown fox." ] )
            , ( "italic", W.V0.Text.view [ W.V0.Text.italic ] [ H.text "The quick brown fox." ] )
            , ( "underline", W.V0.Text.view [ W.V0.Text.underline ] [ H.text "The quick brown fox." ] )
            , ( "small", W.V0.Text.view [ W.V0.Text.small ] [ H.text "Small text." ] )
            , ( "large", W.V0.Text.view [ W.V0.Text.large ] [ H.text "Large text." ] )
            , ( "extra large", W.V0.Text.view [ W.V0.Text.extraLarge ] [ H.text "Extra large." ] )
            , ( "aux", W.V0.Text.view [ W.V0.Text.aux ] [ H.text "Aux text." ] )
            ]
