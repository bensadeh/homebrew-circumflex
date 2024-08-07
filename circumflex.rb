# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is a command line tool for browsing Hacker News in your terminal"
  homepage "https://github.com/bensadeh/circumflex/"
  version "3.7"
  license "AGPL-3.0-only"

  depends_on "less"

  on_macos do
    on_intel do
      url "https://github.com/bensadeh/circumflex/releases/download/3.7/circumflex_3.7_darwin_amd64.tar.gz"
      sha256 "c1293fcbc45eef0489e8f8e33d3d5fba88f94030789aebbd6998c21b308c2eb5"

      def install
        bin.install "circumflex" => "clx"
        man1.install "#{buildpath}/share/man/clx.1"
      end
    end
    on_arm do
      url "https://github.com/bensadeh/circumflex/releases/download/3.7/circumflex_3.7_darwin_arm64.tar.gz"
      sha256 "ebce358d0e7824567edc8e84d9cdfc3b7a05d830cd5fe9072a1f2e5f1bb640e2"

      def install
        bin.install "circumflex" => "clx"
        man1.install "#{buildpath}/share/man/clx.1"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bensadeh/circumflex/releases/download/3.7/circumflex_3.7_linux_amd64.tar.gz"
        sha256 "ae9ad7c0db3f444e793e71d37db86e3d2c79c895c9c335ca7c8ffc04c79dc603"

        def install
          bin.install "circumflex" => "clx"
          man1.install "#{buildpath}/share/man/clx.1"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/bensadeh/circumflex/releases/download/3.7/circumflex_3.7_linux_arm64.tar.gz"
        sha256 "d704e8e615b01c43a158c75ae391635f56969d25cacfd0dd708812df95b384a6"

        def install
          bin.install "circumflex" => "clx"
          man1.install "#{buildpath}/share/man/clx.1"
        end
      end
    end
  end
end
