# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class GhSource < Formula
  desc "Plugin manager for people who don't like plugin managers"
  homepage "https://github.com/Yarden-zamir/gh-source"
  url "https://github.com/Yarden-zamir/gh-source/archive/v0.0.5.tar.gz"
  sha256 "74e1c4c87599762910637fffe8b0d23d38d1ef48d98122fe51562ab6b8bf39e3"
  license "MIT"

  def install
    bin.install gh-source.zsh
libexec.install Dir["*"]
  end
end
