# This file was generated by GoReleaser. DO NOT EDIT.
class Circumflex < Formula
  desc "circumflex is Hacker News on the command line"
  homepage ""
  version "0.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bensadeh/circumflex/releases/download/0.2.2/circumflex_0.2.2_Darwin_x86_64.tar.gz"
    sha256 "31ca3af85ec96a849fbcc67467e90bee3e9399104d727b08aa247014d70f7b19"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bensadeh/circumflex/releases/download/0.2.2/circumflex_0.2.2_Linux_x86_64.tar.gz"
    sha256 "acd6269c1796b600f91d315568fa7cdbd97374b3ca7bb2725abca58ae70bb8ed"
  end

  def install
    bin.install "circumflex" => "clx"
  end
end
