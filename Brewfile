# Brewfile for PageMon project

# Install Bash
brew install bash

# Install curl for fetching website content
brew install curl

# Install xmllint for HTML content normalization
brew install libxml2

# Install jq for JSON parsing (optional, for Pushover notifications)
brew install jq

# Install coreutils for additional GNU utilities
brew install coreutils

# Install gnu-sed for GNU sed
brew install gnu-sed

# Install md5sha1sum for md5sum
brew install md5sha1sum

# Custom script setup
system "curl -o /usr/local/bin/pagemon https://raw.githubusercontent.com/binarynoir/pagemon/main/pagemon"
system "chmod +x /usr/local/bin/pagemon"

# Install the man page
system "curl -o /usr/local/share/man/man1/pagemon.1 https://raw.githubusercontent.com/binarynoir/pagemon/main/pagemon.1"
system "man -c /usr/local/share/man/man1/pagemon.1"
