class Minter < Formula
  desc "Spec compiler and validator for structured behavioral specifications"
  homepage "https://github.com/arnaudlewis/minter"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter/releases/download/v1.1.1/minter-v1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "f2c5a6a6f523b0d8f1a2a5ea013905ff8a583f07d3be88bc01c27f8c1873b6ff"
    else
      url "https://github.com/arnaudlewis/minter/releases/download/v1.1.1/minter-v1.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "9ca2ff0667229183151096b63a0e5d0e1d7b967c76b63f16704be896919a0aba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter/releases/download/v1.1.1/minter-v1.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "326ffbc54b9cff8f7a722f0b9cf8dc226d94a7648a4ecac604639dad56eb428e"
    else
      url "https://github.com/arnaudlewis/minter/releases/download/v1.1.1/minter-v1.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de85ae48e58cdac51ae976d67965bd1884c9b162c05edea9be735981a7cd9d7b"
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
