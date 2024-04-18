# Configuration

This repository should be your `~/.config`.

## fish Installation

```{.shell}
brew install fish
chsh -s $(which fish)
fish
brew install starship
# use starship config from this repo
```

## Important software

- [n](https://github.com/tj/n)
- neovim: `brew install neovim`
- [AstroNvim](https://astronvim.github.io/)
- [kitty](https://sw.kovidgoyal.net/kitty/) `brew install kitty`

- [TinyTeX](https://yihui.org/tinytex)
  - `wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh`
  - missing packages for Eisvogel:
    `tlmgr install koma-script` and [these](tinytex-pkg.txt)
- [Eisvogel Pandoc Template](https://github.com/Wandmalfarbe/pandoc-latex-template/releases)
- pandoc: `brew install pandoc`

## WSL - Windows Subsystem for Linux

WSL is awesome, vscode also has a nice integration for WSL. Your repository can live in Linux and your VS Code will run natively in Windows.

### Fix font

Use Windows Terminal so you have tabs and stuff. Install a font from <https://www.nerdfonts.com> and select it in the settings of Windows Terminal:

```{.json}
{
                "guid": "{07b52e3e-de2c-5db4-bd2d-asdf}",
                "hidden": false,
                "name": "Ubuntu-20.04",
                "source": "Windows.Terminal.Wsl",
                "fontFace": "BitstreamVeraSansMono NF",
                "bellStyle": "none",
                "startingDirectory": "\\\\wsl$\\Ubuntu-20.04\\home\\malte"
            }
```

### XServer

Want to run a graphical program from WSL? Install [vcxsrv](https://skeptric.com/wsl2-xserver/).
