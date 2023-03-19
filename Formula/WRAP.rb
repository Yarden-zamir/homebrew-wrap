# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Wrap < Formula
  desc "Generates 'wraps' for functions in any language using 'processors'"
  homepage "https://github.com/Yarden-zamir/WRAP"
  url "https://github.com/Yarden-zamir/WRAP/archive/v0.2.49.tar.gz"
  sha256 "51c70cdb0dc7ec56f929cba2d5d34a214dbe8b8aefc898d359a024ca9ce1e4db"
  license "MIT"

  depends_on "python@3.11"

  def install
    libexec.install Dir["*"]
bin.write_exec_script libexec/"wrap"
  end
end
