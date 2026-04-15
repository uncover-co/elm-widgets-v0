module Chapters.Skeleton exposing (chapter_)

import ElmBook.Chapter exposing (Chapter, chapter, renderComponentList)
import W.V0.Skeleton


chapter_ : Chapter x
chapter_ =
    chapter "Skeleton"
        |> renderComponentList
            [ ( "default", W.V0.Skeleton.view [] )
            , ( "fixed size", W.V0.Skeleton.view [ W.V0.Skeleton.width 200, W.V0.Skeleton.height 20 ] )
            , ( "circle", W.V0.Skeleton.view [ W.V0.Skeleton.circle 48 ] )
            , ( "no animation", W.V0.Skeleton.view [ W.V0.Skeleton.noAnimation ] )
            ]
