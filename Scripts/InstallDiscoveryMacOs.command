#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
yes | brew install git
yes | brew install node
yes | brew install --cask visual-studio-code
