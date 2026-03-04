class Minter < Formula
  desc "Spec compiler and validator for structured behavioral specifications"
  homepage "https://github.com/arnaudlewis/minter-releases"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.0.0/minter-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "5e694bcbff7f2bce098ae1e0a7f6b24a03ff78318abb0cff24563a98a08c1fc5"
    else
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.0.0/minter-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "a605f6fbe62625bc502ddcb6cfef204130f05a86069b21283bb92149bab0260e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.0.0/minter-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8a7f4a9cc35996ac86cb958ed19f756d2d4652ff0c842e999c746d1dac0a8a6"
    else
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.0.0/minter-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ee052af99e5a60d6096dd5da504a30ca2fe1e545c23b62ae6adce29de1df020"
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
