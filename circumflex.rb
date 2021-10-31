# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is a command line tool for browsing Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "1.25"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.25/circumflex_1.25_macOS_64-bit.tar.gz"
      sha256 "f0f98f0c6d94be31bc1015a741c0206a64e6e288fbdbc71b05a4e9b3cddf3b4a"

      def install
        bin.install "circumflex" => "clx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bensadeh/circumflex/releases/download/1.25/circumflex_1.25_macOS_arm64.tar.gz"
      sha256 "a26d4f92ac6f0eec665eeea4c1a42da5a0c505cc0e50a1adbaa9d5cd3b0e808b"

      def install
        bin.install "circumflex" => "clx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bensadeh/circumflex/releases/download/1.25/circumflex_1.25_Linux_arm64.tar.gz"
      sha256 "750b1d98d69c634689f2583fdee64edfc107232b37fb0013592d51942cf88a96"

      def install
        bin.install "circumflex" => "clx"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bensadeh/circumflex/releases/download/1.25/circumflex_1.25_Linux_64-bit.tar.gz"
      sha256 "6ffa4186dc012e0250f03a99590898c6fe16a4dace9c7ff70bdc82249dc2148c"

      def install
        bin.install "circumflex" => "clx"
      end
    end
  end

  depends_on "less"
end
