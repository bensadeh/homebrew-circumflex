# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "0.15"
  license "AGPL-3.0-only"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/bensadeh/circumflex/releases/download/0.15/circumflex_0.15_macOS_64-bit.tar.gz"
    sha256 "3c85a070715a2856e242673a69986723190f3043c2ad9bb5e432a2a802340c79"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/bensadeh/circumflex/releases/download/0.15/circumflex_0.15_macOS_arm64.tar.gz"
    sha256 "06c40887f3b760e8a3bf2d39f22d20b28a25391919f8a5ce16290dc2ff3ba98a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bensadeh/circumflex/releases/download/0.15/circumflex_0.15_Linux_64-bit.tar.gz"
    sha256 "25e4641eb5a5a9becb39744335fe396f0b331e08e36d4c6d7de53c9df6a51ec2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/bensadeh/circumflex/releases/download/0.15/circumflex_0.15_Linux_arm64.tar.gz"
    sha256 "66416426aea5fb765008fcc54d84c1698b6967641bc9ed594e254059eb9653b1"
  end

  depends_on "less"

  def install
    bin.install "circumflex" => "clx"
  end
end
