# Configuration

My `.dotfiles`. Deploy with `cat deploy.sh | sh`

## fish Installation

~~~{.shell}
brew install fish
brew install starship
# use starship config from this repo
~~~

## zsh Installation

~~~{.shell}
sudo apt-get update
sudo apt-get install zsh
# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# starship
curl -fsSL https://starship.rs/install.sh | bash
~~~

Then get some zsh-plugins from Github and clone in `~/.oh-my-zsh/custom/plugins`:

- <https://github.com/zsh-users/zsh-autosuggestions>
- <https://github.com/MichaelAquilina/zsh-you-should-use>

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

### Fix font

Install a font from <https://www.nerdfonts.com> and select it in the settings of Windows Terminal:

~~~{.json}
{
                "guid": "{07b52e3e-de2c-5db4-bd2d-asdf}",
                "hidden": false,
                "name": "Ubuntu-20.04",
                "source": "Windows.Terminal.Wsl",
                "fontFace": "BitstreamVeraSansMono NF",
                "bellStyle": "none",
                "startingDirectory": "\\\\wsl$\\Ubuntu-20.04\\home\\malte"
            }
~~~

### XServer

Install [vcxsrv](https://skeptric.com/wsl2-xserver/).
