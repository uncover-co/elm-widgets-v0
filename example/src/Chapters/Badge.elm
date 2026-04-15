module Chapters.Badge exposing (chapter_)

import ElmBook.Chapter exposing (Chapter, chapter, renderComponentList)
import Html as H
import W.V0.Badge


chapter_ : Chapter x
chapter_ =
    chapter "Badge"
        |> renderComponentList
            [ ( "default"
              , W.V0.Badge.view []
                    { content = Just [ H.text "3" ]
                    , children = [ H.text "Inbox" ]
                    }
              )
            , ( "primary"
              , W.V0.Badge.view [ W.V0.Badge.primary ]
                    { content = Just [ H.text "12" ]
                    , children = [ H.text "Notifications" ]
                    }
              )
            , ( "success"
              , W.V0.Badge.view [ W.V0.Badge.success ]
                    { content = Just [ H.text "OK" ]
                    , children = [ H.text "Status" ]
                    }
              )
            , ( "warning"
              , W.V0.Badge.view [ W.V0.Badge.warning ]
                    { content = Just [ H.text "!" ]
                    , children = [ H.text "Alert" ]
                    }
              )
            , ( "small"
              , W.V0.Badge.view [ W.V0.Badge.small ]
                    { content = Just [ H.text "99+" ]
                    , children = [ H.text "Messages" ]
                    }
              )
            ]
