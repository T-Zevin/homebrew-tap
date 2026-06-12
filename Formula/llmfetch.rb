class Llmfetch < Formula
  desc "AI workstation dashboard for local LLM discovery and fit checks"
  homepage "https://github.com/T-Zevin/llmfetch"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/llmfetch/releases/download/v0.4.1/llmfetch-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "7a512ac8e9dbf20d9997cbd897e064bd5c6155a2d7174c05216a5335d96caedd"
    else
      url "https://github.com/T-Zevin/llmfetch/releases/download/v0.4.1/llmfetch-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "7737524ee9a51db92f8cdbd0dcc6711d70405a5aab8b7c3a0269de010819d47d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/llmfetch/releases/download/v0.4.1/llmfetch-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20f5242e7c9260a743a1ab4aaed7dafbb0d96d6cb022f624b1534f4f4f1dd641"
    else
      url "https://github.com/T-Zevin/llmfetch/releases/download/v0.4.1/llmfetch-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b475141082fd7577dcfa09f37e0f91634d9d5aaccafd8bb740e22d211b80b0c5"
    end
  end

  def install
    bin.install "llmfetch"
  end

  test do
    assert_match "models", shell_output("#{bin}/llmfetch --json")
  end
end
