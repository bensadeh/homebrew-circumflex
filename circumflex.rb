# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is a command line tool for browsing Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "1.27"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.27/circumflex_1.27_macOS_64-bit.tar.gz"
      sha256 "97b78a37292a0564e87246d9ab08a73672f4ba5539ddfd19dea9badc6ecc4904"

      def install
        bin.install "circumflex" => "clx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bensadeh/circumflex/releases/download/1.27/circumflex_1.27_macOS_arm64.tar.gz"
      sha256 "6427369c9e3b3ddf919ecd8239c6faf839f5d19f3b005a493c6e2cee6006bcfb"

      def install
        bin.install "circumflex" => "clx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.27/circumflex_1.27_Linux_64-bit.tar.gz"
      sha256 "f467c4177a203ceb84d4f3c2860e419b4b5dfc3e567aef77e81749ea167181c4"

      def install
        bin.install "circumflex" => "clx"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bensadeh/circumflex/releases/download/1.27/circumflex_1.27_Linux_arm64.tar.gz"
      sha256 "bbbe24efdb17e9c6b05c638d01290dbfce816fdd5fc12ee299c143e8bf582c44"

      def install
        bin.install "circumflex" => "clx"
      end
    end
  end

  depends_on "less"
end
