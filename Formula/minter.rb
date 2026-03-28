class Minter < Formula
  desc "Spec compiler and validator for structured behavioral specifications"
  homepage "https://github.com/arnaudlewis/minter"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter/releases/download/v2.0.0/minter-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "df731881705d373cf194b452707736ed5d97cb742e23ab733a354c9d8a18a958"
    else
      url "https://github.com/arnaudlewis/minter/releases/download/v2.0.0/minter-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "8436e3e1d35cacc82938a75de7b423c252a276c9b24ef5c06b31867ad9a89e37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter/releases/download/v2.0.0/minter-v2.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58e4075b932b0e0c34b10bdb63b63b914190da057e39cb8f73b9d21e090b4743"
    else
      url "https://github.com/arnaudlewis/minter/releases/download/v2.0.0/minter-v2.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8a3198179b003863275364862d9305f42fec839dd42351d193eb71d8473ef1c"
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
