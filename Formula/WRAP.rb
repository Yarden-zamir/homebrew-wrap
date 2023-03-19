# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Wrap < Formula
  desc "Generates 'wraps' for functions in any language using 'processors'"
  homepage "https://github.com/Yarden-zamir/WRAP"
  url "https://github.com/Yarden-zamir/WRAP/archive/v0.2.57.tar.gz"
  sha256 "cc2f392103b2039a16d73891607e9e4e5f9b93364f4ceaf4389d604edada62f8"
  license "MIT"

  depends_on "python@3.11"

  def install
    libexec.install Dir["*"]
bin.write_exec_script libexec/"wrap"
(libexec/"VERSION").write version
  end
end
