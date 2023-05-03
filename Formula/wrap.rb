# typed: false
# frozen_string_literal: true

class Wrap < Formula
  desc "Generates 'wraps' for functions in any language using 'processors'"
  homepage "https://github.com/Yarden-zamir/WRAP"
  url "https://github.com/Yarden-zamir/WRAP/archive/v0.2.90.tar.gz"
  sha256 "bbe1fb86abb3b2cc652a2c578de857717924c4b91a72156a1220599d505aaf51"
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
