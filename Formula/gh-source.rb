# typed: false
# frozen_string_literal: true

class GhSource < Formula
  desc "Plugin manager for people who don't like plugin managers"
  homepage "https://github.com/Yarden-zamir/gh-source"
  url "https://github.com/Yarden-zamir/gh-source/archive/v0.0.21.tar.gz"
  sha256 "f1c799408bd3f68c8cd490c932c1314c08fb86a13f0a4584c607d6338d1ccd69"
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
