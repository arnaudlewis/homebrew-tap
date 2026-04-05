class Emberflow < Formula
  desc "Local-first canonical MCP runtime and product surface for EmberFlow"
  homepage "https://github.com/arnaudlewis/emberflow"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.1.0/emberflow-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d6fcfbf2da3aa84d8dcf128e552f9da851040396c1ee25b500d5c32576760c46"
    else
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.1.0/emberflow-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "1cdea8a383c902c72c65df0b968f4b65688f4ae54d6c772e89e7106e79b9b06a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.1.0/emberflow-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eaf25c4d5ff4dc8d40e32e4cb239042b9522905603d57a9145754fe70edee93e"
    else
      url "https://github.com/arnaudlewis/emberflow/releases/download/emberflow-v0.1.0/emberflow-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7fa93f09fbc958cfe008bef55d2d39dfac45bc88faa603c1702bf391d16f257"
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
