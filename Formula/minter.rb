class Minter < Formula
  desc "Spec compiler and validator for structured behavioral specifications"
  homepage "https://github.com/arnaudlewis/minter-releases"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.0.1/minter-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "252a11049c12f242d85bdf1607e18ad8e60db7ae1bce5b5d8dde1a3eb8c9f523"
    else
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.0.1/minter-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "0ca9b85202ceaef6b93fa64cb52d3973f2f490c8d9fd4a1ab50317b05dfc6e73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.0.1/minter-v1.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ccc43b475c00dbc79f6d9fd00effc022847a6e1c8e3f63bf71d0fc06e1b675a6"
    else
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.0.1/minter-v1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a85b26a8ba193066096faa935ac11534c3d48ff110ec18263fdebee8a267bf0"
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
