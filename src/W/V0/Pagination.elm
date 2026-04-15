module W.V0.Pagination exposing
    ( view, viewLinks
    , separator
    , htmlAttrs, noAttr, Attribute
    )

{-|

@docs view, viewLinks


# Styles

@docs separator


# Html

@docs htmlAttrs, noAttr, Attribute

-}

import Html as H
import Html.Attributes as HA
import W.V0.Button
import W.V0.Internal.Pagination



-- Attributes


{-| -}
type Attribute msg
    = Attribute (Attributes msg -> Attributes msg)


type alias Attributes msg =
    { separator : List (H.Html msg)
    , htmlAttributes : List (H.Attribute msg)
    }


applyAttrs : List (Attribute msg) -> Attributes msg
applyAttrs attrs =
    List.foldl (\(Attribute fn) a -> fn a) defaultAttrs attrs


defaultAttrs : Attributes msg
defaultAttrs =
    { separator = [ H.span [ HA.class "ew-relative -ew-top-px" ] [ H.text "—" ] ]
    , htmlAttributes = []
    }



-- Attributes : Setters


{-| -}
separator : List (H.Html msg) -> Attribute msg
separator v =
    Attribute (\attrs -> { attrs | separator = v })


{-| Attributes applied to the wrapper element.
-}
htmlAttrs : List (H.Attribute msg) -> Attribute msg
htmlAttrs v =
    Attribute <| \attrs -> { attrs | htmlAttributes = v }


{-| -}
noAttr : Attribute msg
noAttr =
    Attribute identity



-- Main


viewWrapper : List (H.Attribute msg) -> List (H.Html msg) -> H.Html msg
viewWrapper attrs =
    H.div (HA.class "ew-flex ew-items-center ew-font-primary ew-space-x-2 ew-text-base-aux" :: attrs)


{-| -}
viewLinks :
    List (Attribute msg)
    ->
        { total : Int
        , active : Int
        , href : Int -> String
        }
    -> H.Html msg
viewLinks attrs_ props =
    case W.V0.Internal.Pagination.toPages props.active props.total of
        Ok pages ->
            let
                attrs : Attributes msg
                attrs =
                    applyAttrs attrs_
            in
            viewWrapper attrs.htmlAttributes
                (pages
                    |> List.map
                        (\page ->
                            if page /= -1 then
                                W.V0.Button.viewLink
                                    [ W.V0.Button.small
                                    , W.V0.Button.invisible
                                    , W.V0.Button.icon
                                    , if page == props.active then
                                        W.V0.Button.primary

                                      else
                                        W.V0.Button.noAttr
                                    ]
                                    { href = props.href page
                                    , label = [ H.text (String.fromInt page) ]
                                    }

                            else
                                H.span
                                    [ HA.class "ew-inline-flex ew-items-center ew-leading-none" ]
                                    attrs.separator
                        )
                )

        Err errorMessage ->
            H.text errorMessage


{-| -}
view :
    List (Attribute msg)
    ->
        { total : Int
        , active : Int
        , onClick : Int -> msg
        }
    -> H.Html msg
view attrs_ props =
    case W.V0.Internal.Pagination.toPages props.active props.total of
        Ok pages ->
            let
                attrs : Attributes msg
                attrs =
                    applyAttrs attrs_
            in
            viewWrapper attrs.htmlAttributes
                (pages
                    |> List.map
                        (\page ->
                            if page /= -1 then
                                W.V0.Button.view
                                    [ W.V0.Button.small
                                    , W.V0.Button.icon
                                    , if page == props.active then
                                        W.V0.Button.primary

                                      else
                                        W.V0.Button.invisible
                                    ]
                                    { onClick = props.onClick page
                                    , label = [ H.text (String.fromInt page) ]
                                    }

                            else
                                H.span
                                    [ HA.class "ew-inline-flex ew-items-center ew-leading-none" ]
                                    attrs.separator
                        )
                )

        Err errorMessage ->
            H.text errorMessage
