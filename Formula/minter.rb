class Minter < Formula
  desc "Spec compiler and validator for structured behavioral specifications"
  homepage "https://github.com/arnaudlewis/minter"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter/releases/download/v2.2.0/minter-v2.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "e2d95c0358fa03204f96394303f0e1254fb8ee2317965a7b9808029abcf99f9f"
    else
      url "https://github.com/arnaudlewis/minter/releases/download/v2.2.0/minter-v2.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f0fb034f8bc402c8e55934bafe238e54f63bfd0d0f48cbc467ec3f20d7c0a7d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter/releases/download/v2.2.0/minter-v2.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8bb699cef10003b719a3cdf67fc3ddd84c9cb7766e706c56e85cd7fd310ba5fa"
    else
      url "https://github.com/arnaudlewis/minter/releases/download/v2.2.0/minter-v2.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7f49243822683d721ef38c20a907c8e0eef8a34bc6d8a1637b6f024404f2ac5"
    end
  end

  def install
    bin.install "minter"
    bin.install "minter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/minter --version")
  end
end
