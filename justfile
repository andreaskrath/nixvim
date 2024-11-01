default:
    @just -l

run:
    @git add .
    @nix run .
