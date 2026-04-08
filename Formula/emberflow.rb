class Emberflow < Formula
  desc "Local-first canonical MCP runtime and product surface for EmberFlow"
  homepage "https://github.com/arnaudlewis/emberflow"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.2.0/emberflow-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "aab0340b65ea89161cd820a59efbdf1dad1259adbdde9a0c590fa910bc7e9bb4"
    else
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.2.0/emberflow-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f40d6ad4b31ebee0976bb73c091ed93e99c572e5102c13c11a22dc6cb1d70e71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.2.0/emberflow-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a4699d4bd79dbd5c984e857cd68b105381bd6e93190c775463b79db00e01ec8"
    else
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.2.0/emberflow-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6c7ed8d2f5155d0643c576db44ba65c01ba8b985c03a59f227274d4780fa69f"
    end
  end

  def install
    bin.install "emberflow"
    bin.install "emberflow-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/emberflow --version")
  end
end
