if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path /opt/homebrew/bin
    fish_add_path ~/.n/bin
    fish_add_path ~/.ghcup/bin
    fish_add_path ~/.cabal/bin
    fish_add_path ~/.local/bin
    source (/opt/homebrew/bin/starship init fish --print-full-init | psub)
end
