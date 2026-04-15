module Chapters.Loading exposing (chapter_)

import ElmBook.Chapter exposing (Chapter, chapter, renderComponentList)
import W.V0.Loading


chapter_ : Chapter x
chapter_ =
    chapter "Loading"
        |> renderComponentList
            [ ( "dots", W.V0.Loading.dots [] )
            , ( "ripples", W.V0.Loading.ripples [] )
            ]
