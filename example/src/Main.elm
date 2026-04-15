module Main exposing (main)

import Chapters.Badge
import Chapters.Button
import Chapters.Divider
import Chapters.Loading
import Chapters.Message
import Chapters.Overview
import Chapters.Skeleton
import Chapters.Tag
import Chapters.Text
import ElmBook exposing (Book, book, withChapterGroups, withThemeOptions)
import ElmBook.ThemeOptions
import Theme
import W.V0.Styles


main : Book ()
main =
    book "elm-widgets-v0"
        |> withThemeOptions
            [ ElmBook.ThemeOptions.subtitle "Frozen widget library"
            , ElmBook.ThemeOptions.globals
                [ Theme.globalProvider Theme.lightTheme
                , W.V0.Styles.globalStyles
                , W.V0.Styles.baseTheme
                ]
            ]
        |> withChapterGroups
            [ ( ""
              , [ Chapters.Overview.chapter_
                ]
              )
            , ( "Basics"
              , [ Chapters.Text.chapter_
                , Chapters.Button.chapter_
                , Chapters.Divider.chapter_
                ]
              )
            , ( "Information"
              , [ Chapters.Badge.chapter_
                , Chapters.Tag.chapter_
                , Chapters.Message.chapter_
                , Chapters.Loading.chapter_
                , Chapters.Skeleton.chapter_
                ]
              )
            ]
