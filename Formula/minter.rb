class Minter < Formula
  desc "Spec compiler and validator for structured behavioral specifications"
  homepage "https://github.com/arnaudlewis/minter"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter/releases/download/v2.1.0/minter-v2.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7bea2167a824a492b7680e3a0ba8177ee8e836f5ff76ba917a0feea6bb5e4d44"
    else
      url "https://github.com/arnaudlewis/minter/releases/download/v2.1.0/minter-v2.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6793c56664ddb78374ae45ecc656a0383ad6a6f302a24187f96a63bc3adcacdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/minter/releases/download/v2.1.0/minter-v2.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "154112db282fc2ca8980040488af3a38c2a1d2aa3cecd52de4145e7a1a7cace6"
    else
      url "https://github.com/arnaudlewis/minter/releases/download/v2.1.0/minter-v2.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b944249a9c2fa77891b5cf915ca42e931a363674688f1ee16f20d4748576a0c1"
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
