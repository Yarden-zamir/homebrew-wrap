# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Wrap < Formula
  desc "Generates 'wraps' for functions in any language using 'processors'"
  homepage "https://github.com/Yarden-zamir/WRAP"
  url "https://github.com/Yarden-zamir/WRAP/archive/v0.2.33.tar.gz"
  sha256 "418cbff00881a93a2d9c5da473a9d270a84d359c9ab18fc14dc88b895aabcf64"

  depends_on "python@3.11"

  def install
    libexec.install Dir["*"]
bin.write_exec_script libexec/"wrap"
  end
end
