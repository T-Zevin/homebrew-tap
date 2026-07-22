class Skillguardrail < Formula
  desc "Pre-install security scanner and guarded installer for Agent Skills"
  homepage "https://github.com/T-Zevin/SkillGuardrail"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_arm64.tar.gz"
      sha256 "7795f32de3abecee51bf37cd3a193a42658d1e5bc45d24974eef79caf6a40cab"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_amd64.tar.gz"
      sha256 "3d88f3009e239d9641b2a64117c9f0b1685bc6c8fa5b80629ee8dd251600016d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_arm64.tar.gz"
      sha256 "8ba5c4b3054a49577ff7967142245e509a06487aed04ecd94b1ca318f8d5f74f"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_amd64.tar.gz"
      sha256 "ed3d793dc3e2d8c8615d7a43e901b28ecde20177bb0fdce86531e382f21ffa62"
    end
  end

  def install
    bin.install "skillguardrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillguardrail version")
  end
end
