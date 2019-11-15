echo "Enabling always expanded save panel"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

echo "Enabling always expanded print panel"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

echo "Disabling default save to iCloud"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

echo "Disabling press and hold in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo "Setting blazing fast key repeat"
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

echo "Showing ~/Library directory"
chflags nohidden ~/Library


echo "Setting columns view as default in Finder"
defaults write com.apple.Finder FXPreferredViewStyle clmv

echo "Disabling dashboard"
defaults write com.apple.dashboard mcx-disabled -bool true

echo "Disabling auto open iTunes on connected devices"
defaults write com.apple.iTunes DeviceBackupsDisabled -bool true

echo "Enabling keyboard focus on all UI elements"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Enabling auto-hiding of Dock"
defaults write com.apple.dock autohide -bool true

echo "Installing rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing tools from Homebrew"
brew bundle install

open "http://firefox.com"
