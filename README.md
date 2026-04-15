# elm-widgets-v0

Frozen V0 of uncover-co's in-house Elm widget library (namespace `W.V0.*`).

This is a **reference snapshot** — no new features planned. The active webapp consumes this code as a vendored copy; this repo exists to share the source with external collaborators without granting access to the main product repo.

A live showcase of every widget is published via GitHub Pages at:

**https://uncover-co.github.io/elm-widgets-v0/**

## Getting started

Install the package as a git dependency or vendor the `src/W/V0/` folder into your own project.

```elm
import Html exposing (..)
import W.V0.Styles
import W.V0.Button


main : Html msg
main =
    div []
        [ W.V0.Styles.globalStyles
        , W.V0.Styles.baseTheme
        , W.V0.Button.view []
            { label = [ text "Click me" ]
            , onClick = NoOp
            }
        ]
```

`W.V0.Styles.globalStyles` ships pre-compiled CSS inlined — no Tailwind build step required on the consumer side.

## Repository layout

```
src/W/V0/         Widget source (33 public modules + Internal/)
example/          elm-book site showcasing widgets
.github/workflows Pages deploy
```

## Development

```bash
cd example
npm install
npm start     # elm-watch hot + serve dist
npm run build # elm-watch make --optimize → example/dist/main.js
```

## License

[MPL-2.0](./LICENSE)
