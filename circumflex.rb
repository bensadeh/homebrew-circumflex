# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "0.16"
  license "AGPL-3.0-only"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/bensadeh/circumflex/releases/download/0.16/circumflex_0.16_macOS_64-bit.tar.gz"
    sha256 "23d0eae9c1eddbc22de5574a9646f46bf777acf526139d07f8fd2ba067a4c780"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/bensadeh/circumflex/releases/download/0.16/circumflex_0.16_macOS_arm64.tar.gz"
    sha256 "1650a0f2d2adc4dad542633179ef77e23c57584fc21cd322c4e8087772bbc85e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bensadeh/circumflex/releases/download/0.16/circumflex_0.16_Linux_64-bit.tar.gz"
    sha256 "bbd11285fc332f41859f4e391b772dc9f7aceac324f18e10649220b3ff0b9112"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/bensadeh/circumflex/releases/download/0.16/circumflex_0.16_Linux_arm64.tar.gz"
    sha256 "e7b1d38ad0b703c04e8af2991fa700e6bf2284acc4fab3da7a6225a33e4b1344"
  end

  depends_on "less"

  def install
    bin.install "circumflex" => "clx"
  end
end
