
<img src="http://package.elm-lang.org/assets/logo.png" width="128">

![elm version](https://img.shields.io/badge/elm-0.17.1-EBDB61.svg)

This bundle provides a language mode for the functional programming language Elm.

#### Installation
1. `cd ~/.howl/bundles`
2. `git clone https://github.com/rokf/elm`
3. `:bundle-load elm`

For the documentation you need to overwrite the binding in your `init` configuration file.

```
howl.bindings.push {
  editor = {
    ctrl_q = function (editor)
      if howl.app.editor.buffer.mode.name == "elm" then
        howl.command.run('elm-doc')
      else
        howl.command.run('show-doc-at-cursor')
      end
    end
  }
}
```
If you have other bundles which run a custom command to access the docs just do the same, so they wont
overlap.

For inteligent completion you will need `elm-oracle` which can be installed via

1. `sudo npm install -g elm-oracle`

For `elm-package` you need `lua-requests` from `luarocks` because Howl does not come with bundled HTTP request support.

1. `luarocks install lua-requests` (**LuaJIT**)

#### Adds
1. Syntax highlighting for `.elm` files
2. Autocomplete and documentation via static API (Currently disabled)
3. Inteligent autocomplete with `elm-oracle`
3. Inteligent documentation with `elm-oracle`
4. `elm-make` which compiles your project to `elm.js`
5. `elm-package` which gives you a list of available packages to select and install
