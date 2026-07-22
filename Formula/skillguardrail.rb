class Skillguardrail < Formula
  desc "Pre-install security scanner and guarded installer for Agent Skills"
  homepage "https://github.com/T-Zevin/SkillGuardrail"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_arm64.tar.gz"
      sha256 "16b91a7983b06338196859e0d1841a1bc9e1bf15d9a09b54f5d58a8fe2894f37"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_amd64.tar.gz"
      sha256 "a7eeb23d0f43f1117c6df30ec830535473100f38e4372b41b13250f16ba36a5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_arm64.tar.gz"
      sha256 "c555878a3a2e1248b73fc2500df340faf8ea25d1239b574eb0a865ae0157ec15"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_amd64.tar.gz"
      sha256 "ad7d489c1d9b875094c72618678a2594eaff4d8e4f8e39b4e8f752f7e22131ff"
    end
  end

  def install
    bin.install "skillguardrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillguardrail version")
  end
end
