class Skillguardrail < Formula
  desc "Pre-install security scanner and guarded installer for Agent Skills"
  homepage "https://github.com/T-Zevin/SkillGuardrail"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_arm64.tar.gz"
      sha256 "f50397af9001c4629f88f050f73477348c5b9ad6fa6260561b9b38b32cb4aaf5"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_amd64.tar.gz"
      sha256 "357391d20ef2c7a9f9bbdf119595198019eaa1e306278fca352771b14ccb6f88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_arm64.tar.gz"
      sha256 "5404033b093db374cffa71f7aa2ffadb73126cd612b35c33e6208cf37ec1bc54"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_amd64.tar.gz"
      sha256 "89bb1073ddec14727a3e9ec1c8f7f61177e761a531f92ca031456ae4fd9dd9e1"
    end
  end

  def install
    bin.install "skillguardrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillguardrail version")
  end
end
