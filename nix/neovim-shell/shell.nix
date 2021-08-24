{ pkgs ? import <nixpkgs> { } }:

let
  nixPkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/24ecbeee3cd2737e1be2f46af294d4e5da78d8ce.tar.gz") { };
in
pkgs.mkShell {
  buildInputs = [
    (nixPkgs.neovim.override {
      configure = {
        packages.myPlugins = with nixPkgs.vimPlugins; {
          start = [
	    YouCompleteMe
	    elm-vim
	    neovim-sensible
            (nvim-treesitter.withPlugins (
              plugins: with plugins; [
                tree-sitter-nix
                tree-sitter-python
                tree-sitter-rust
                tree-sitter-json
                tree-sitter-haskell
                tree-sitter-go
              ]
            ))
          ];
        };
      };
    })
  ];
}
