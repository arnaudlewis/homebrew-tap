class Minter < Formula
  desc "Spec compiler and validator for structured behavioral specifications"
  homepage "https://github.com/arnaudlewis/minter-releases"
  version "1.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.1.0/minter-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "73284143570f672214addb1d6b9ffb44f4e09a794fa3416df78dd7ed0c92b85d"
    else
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.1.0/minter-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c5288a69c9d27c0e8a79b304fe96b43486097bc38ae38c2b055d76814d6770d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.1.0/minter-v1.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5fce0af7c0bc3a13c5ccd40db2e819bbcc4e0fabdd0c39a464e2e36cf156bbe7"
    else
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v1.1.0/minter-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95d591376c2b7b7f75f36a72c537a24b1ac4a1d1da760d982c2e787e907b6961"
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
