# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class GhSource < Formula
  desc "Plugin manager for people who don't like plugin managers"
  homepage "https://github.com/Yarden-zamir/gh-source"
  url "https://github.com/Yarden-zamir/gh-source/archive/v0.0.19.tar.gz"
  sha256 "84a6c719e633c24e9b66476341c21edb476c962159287bc7b07c1ec31f10dd97"
  license "MIT"

  depends_on "gh"

  def install
    pkgshare.install "gh-source.zsh"
    pkgshare.install "zsh-completion"
  end

  def caveats
    <<~EOS
      To activate gh-source, add the following at the end of your .zshrc:
        source #{opt_pkgshare}/gh-source.zsh
    EOS
  end
end
