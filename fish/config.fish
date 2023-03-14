if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_add_path /opt/homebrew/bin
    fish_add_path ~/.n/bin
    source (/opt/homebrew/bin/starship init fish --print-full-init | psub)
end
