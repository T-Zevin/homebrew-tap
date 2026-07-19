class Skillguardrail < Formula
  desc "Pre-install security scanner and guarded installer for Agent Skills"
  homepage "https://github.com/T-Zevin/SkillGuardrail"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_arm64.tar.gz"
      sha256 "17e2d38a949066d8a2b1906680909ff6c6b62811f042870dd5f0f0475d16c8f6"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_darwin_amd64.tar.gz"
      sha256 "9522e51eebec83b8010ec49a623a3718e55a561282e772dd6d4d3020cbea9871"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_arm64.tar.gz"
      sha256 "05210fac79e801a04e3478dcd3919a873316ede8562dddcdb53b1cd3f6be50e1"
    else
      url "https://github.com/T-Zevin/SkillGuardrail/releases/download/v#{version}/SkillGuardrail_#{version}_linux_amd64.tar.gz"
      sha256 "0f9500e279306b25d547cc8da836882d74c1cf7d4618550d95862bc81d654d19"
    end
  end

  def install
    bin.install "skillguardrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skillguardrail version")
  end
end
