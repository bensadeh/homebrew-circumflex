# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "1.1"
  license "AGPL-3.0-only"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/bensadeh/circumflex/releases/download/1.1/circumflex_1.1_macOS_64-bit.tar.gz"
    sha256 "619edbe70de893037247beaaae143d0b4b3ab89bcdf57fdd5be0f2a93cc7cc7d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/bensadeh/circumflex/releases/download/1.1/circumflex_1.1_macOS_arm64.tar.gz"
    sha256 "cba5b0b2b5c47bd9c139bcdc2ead9b38489462e1b05d1b905670666e488b4496"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bensadeh/circumflex/releases/download/1.1/circumflex_1.1_Linux_64-bit.tar.gz"
    sha256 "56d79efc10cb961a837488c14ac2e69abcad76c17875aa9051f6a13487863582"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/bensadeh/circumflex/releases/download/1.1/circumflex_1.1_Linux_arm64.tar.gz"
    sha256 "3ee8f20ee0b87017da364250ebc95af394d275c30a246fce1d1e5da98d277022"
  end

  depends_on "less"

  def install
    bin.install "circumflex" => "clx"
  end
end
