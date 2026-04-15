module Chapters.Overview exposing (chapter_)

import ElmBook.Chapter exposing (Chapter, chapter, render)


chapter_ : Chapter x
chapter_ =
    chapter "Overview"
        |> render """
# elm-widgets-v0

Frozen V0 of Uncover's in-house Elm widget library.

Every widget lives under the `W.V0.*` namespace. The CSS required to style
the widgets is pre-baked into `W.V0.Styles.globalStyles` — drop it anywhere
in your view tree and you're ready to go.

## Chapters

The left sidebar lists every public widget. Each chapter shows the widget
rendered with its common variants.

## Source

[github.com/uncover-co/elm-widgets-v0](https://github.com/uncover-co/elm-widgets-v0)
"""
