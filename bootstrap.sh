#!/usr/bin/env bash

# Inspired by https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function update() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude ".gitignore" --exclude "bootstrap.sh" -avh --no-perms . ~;
    rsync .xcodesnippets/* ~/Library/Developer/Xcode/UserData/CodeSnippets/;
    source ~/.profile
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    update;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        update;
    fi;
fi;
unset update;

echo "Install Vim Bundles";
vim +PluginInstall +qall;
