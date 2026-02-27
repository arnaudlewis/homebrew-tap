class Minter < Formula
  desc "Spec compiler and validator for structured behavioral specifications"
  homepage "https://github.com/arnaudlewis/minter-releases"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v0.1.0/minter-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "104e09f086eca63ecfb53ded531cb96542b6b64de9cb9bb0a3791d2eba176499"
    else
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v0.1.0/minter-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b4acb0ec6febe7dcb365d3d85154d2a9e68f1aa6af841336e11509ee83b2a1a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v0.1.0/minter-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c932480b8aa9d98fc2a4c45b444504a7c093f5692410ac85102bad564f1020b"
    else
      url "https://github.com/arnaudlewis/minter-releases/releases/download/v0.1.0/minter-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db6f25c0555c9e8a1e4aa5a4a5453d54dbdccee70055b56525fb3b56b3c6e80f"
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
