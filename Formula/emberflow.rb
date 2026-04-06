class Emberflow < Formula
  desc "Local-first canonical MCP runtime and product surface for EmberFlow"
  homepage "https://github.com/arnaudlewis/emberflow"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.1.0/emberflow-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0174451a81992c68a14f19d048e17673abc7c2e9248021950976520ab4a8fec9"
    else
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.1.0/emberflow-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e171cf526606ef3e3ededb49f7f518a3dd45956fd2895494f3a5ee59cc8a2f45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.1.0/emberflow-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e7143ceb5ea4bc15dfdeead6d662f42fc08202790ade2ddb23dff2c140d8693"
    else
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.1.0/emberflow-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d299b1ef5956b4ad3ee340c712043de95f552fcff81e1233dc4f95d11dfb58cc"
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
