# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Wrap < Formula
  desc "Generates 'wraps' for functions in any language using 'processors'"
  homepage "https://github.com/Yarden-zamir/WRAP"
  url "https://github.com/Yarden-zamir/WRAP/archive/v0.2.59.tar.gz"
  sha256 "04abf5f722e022fcc844fecb0447f94d69004c46e1d4fc9d1fc9f8c330328c69"
  license "MIT"

  depends_on "python@3.11"

  def install
    libexec.install Dir["*"]
bin.write_exec_script libexec/"wrap"
(libexec/"VERSION").write version
  end
end
