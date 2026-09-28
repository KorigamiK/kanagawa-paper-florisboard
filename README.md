# Kanagawa Paper for FlorisBoard

[Kanagawa](https://github.com/rebelot/kanagawa.nvim) color themes for
[FlorisBoard](https://florisboard.org) 0.5 and newer, set in
[Iosevka Paper](https://font.korigamik.dev).

Six themes are included:

| Theme | Kind | Notes |
|---|---|---|
| Kanagawa Paper Wave | dark | the default Kanagawa palette |
| Kanagawa Paper Dragon | dark | darker, muted variant |
| Kanagawa Paper Lotus | light | light variant |
| … (Borderless) | | same palettes, keys blend into the background |

## Install

Download the latest `.flex` from the
[Releases](https://github.com/KorigamiK/kanagawa-paper-florisboard/releases) page (or
the FlorisBoard Addons Store), then in FlorisBoard open
*Themes › Manage theme extensions › Import* and pick the file.

## Build from source

```sh
sh build.sh         # writes dist/kanagawa-paper-<version>.flex
```

Needs `python3` and `zip`. The build minifies the JSON and zips the
`extension.json`, `stylesheets/` and `fonts/` folders.

## Fonts

`fonts/` contains Iosevka Paper Regular, Medium and Bold with italics,
subset to Latin, Greek, Cyrillic and common symbols to keep the extension
small. Iosevka Paper is licensed under the SIL Open Font License 1.1
(see `fonts/OFL.txt`).

## Credits

- Palette: [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) (MIT)
- Stylesheet structure: [catppuccin/florisboard](https://github.com/catppuccin/florisboard) (MIT)
- Font: [KorigamiK/Iosevka-Paper](https://github.com/KorigamiK/Iosevka-Paper), a build of [Iosevka](https://github.com/be5invis/Iosevka) (OFL 1.1)

## License

MIT, see [LICENSE](LICENSE).
