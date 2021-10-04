# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is a command line tool for browsing Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "1.22.1"
  license "AGPL-3.0-only"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.22.1/circumflex_1.22.1_macOS_64-bit.tar.gz"
      sha256 "e0988540d72650d7b62b11076829272855383fb54272d9be0bc62afb6e6a7391"
    end
    if Hardware::CPU.arm?
      url "https://github.com/bensadeh/circumflex/releases/download/1.22.1/circumflex_1.22.1_macOS_arm64.tar.gz"
      sha256 "7b7b6643df8799dca0866a3ef84334254e53fb7570a4dd1bea0b5b2dd66bea1b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.22.1/circumflex_1.22.1_Linux_64-bit.tar.gz"
      sha256 "e7a5c6b1d67d97437bb18930440766a53085a84545d5f2f7ba2505fdfb1459a8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bensadeh/circumflex/releases/download/1.22.1/circumflex_1.22.1_Linux_arm64.tar.gz"
      sha256 "7766c51df55e2b01ad019c069182b431c86eeb770689fc1b2265132f9529b93c"
    end
  end

  depends_on "less"

  def install
    bin.install "circumflex" => "clx"
    man.install "share/man/"
  end
end
