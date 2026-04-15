module Chapters.Button exposing (chapter_)

import ElmBook.Actions exposing (logAction)
import ElmBook.Chapter exposing (Chapter, chapter, renderComponentList)
import Html as H
import W.V0.Button


chapter_ : Chapter x
chapter_ =
    chapter "Button"
        |> renderComponentList
            [ ( "default"
              , W.V0.Button.view []
                    { label = [ H.text "Default" ]
                    , onClick = logAction "clicked default"
                    }
              )
            , ( "primary"
              , W.V0.Button.view [ W.V0.Button.primary ]
                    { label = [ H.text "Primary" ]
                    , onClick = logAction "clicked primary"
                    }
              )
            , ( "secondary"
              , W.V0.Button.view [ W.V0.Button.secondary ]
                    { label = [ H.text "Secondary" ]
                    , onClick = logAction "clicked secondary"
                    }
              )
            , ( "success"
              , W.V0.Button.view [ W.V0.Button.success ]
                    { label = [ H.text "Success" ]
                    , onClick = logAction "clicked success"
                    }
              )
            , ( "warning"
              , W.V0.Button.view [ W.V0.Button.warning ]
                    { label = [ H.text "Warning" ]
                    , onClick = logAction "clicked warning"
                    }
              )
            , ( "danger"
              , W.V0.Button.view [ W.V0.Button.danger ]
                    { label = [ H.text "Danger" ]
                    , onClick = logAction "clicked danger"
                    }
              )
            , ( "outlined"
              , W.V0.Button.view [ W.V0.Button.primary, W.V0.Button.outlined ]
                    { label = [ H.text "Outlined" ]
                    , onClick = logAction "clicked outlined"
                    }
              )
            , ( "disabled"
              , W.V0.Button.view [ W.V0.Button.disabled True ]
                    { label = [ H.text "Disabled" ]
                    , onClick = logAction "clicked disabled"
                    }
              )
            , ( "small"
              , W.V0.Button.view [ W.V0.Button.small ]
                    { label = [ H.text "Small" ]
                    , onClick = logAction "clicked small"
                    }
              )
            , ( "large"
              , W.V0.Button.view [ W.V0.Button.large ]
                    { label = [ H.text "Large" ]
                    , onClick = logAction "clicked large"
                    }
              )
            ]
