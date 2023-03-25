# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class GhSource < Formula
  desc "Plugin manager for people who don't like plugin managers"
  homepage "https://github.com/Yarden-zamir/gh-source"
  url "https://github.com/Yarden-zamir/gh-source/archive/v0.0.4.tar.gz"
  sha256 "846e1d82aed9136603942939854a05f92162fb789fdc288b956d9f35bd9296c7"
  license "MIT"

  def install
    libexec.install Dir["*"]
bin.install_symlink libexec/gh-source.zsh
  end
end
