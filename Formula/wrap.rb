# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Wrap < Formula
  desc "Generates 'wraps' for functions in any language using 'processors'"
  homepage "https://github.com/Yarden-zamir/WRAP"
  url "https://github.com/Yarden-zamir/WRAP/archive/refs/tags/v0.2.67.tar.gz"
  sha256 "804b07dfb674819aef9cc44fe2577bf8883f46d0e1ff714b6b1d2ab2c7741e88"
  license "MIT"

  depends_on "python@3.11"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"wrap"
    (libexec/"VERSION").write version
  end

  def caveats
    <<~EOS
      To activate wrap, run the following command:
        wrap install
      You can also use
        wrap install --help
      for custom installation.
    EOS
  end
end
