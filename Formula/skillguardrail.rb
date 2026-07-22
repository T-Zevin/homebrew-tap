class Skillguardrail < Formula
  desc "Pre-install security scanner and guarded installer for Agent Skills"
  homepage "https://github.com/T-Zevin/SkillGuardrail"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_arm64.tar.gz"
      sha256 "0df7938a6cbaaa504dc0a03e81edcb4be3f10bfb18c7be0f3fa4dca06dd0a8a0"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_amd64.tar.gz"
      sha256 "7fe7cc2455410af1a339926b9ce85529ad5c13cc7e07a36376fc3305a27a2939"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_arm64.tar.gz"
      sha256 "ea1a434dd038e181f840bbbcd7413435737ad06727eecf049f2b125c786c20c6"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_amd64.tar.gz"
      sha256 "5ba389c64b292b06471533c75248fb8511ce569713d4b267aca4e7a91a314dad"
    end
  end

  def install
    bin.install "skillguardrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillguardrail version")
  end
end
