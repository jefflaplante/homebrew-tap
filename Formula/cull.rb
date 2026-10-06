class Cull < Formula
  desc "Pre-import culling for DNG shoots: verified offload, focus checked at the eyes"
  homepage "https://code.jefflaplante.com/cull/"
  url "https://github.com/jefflaplante/cull/releases/download/v0.2.3/cull_macos_universal.tar.gz"
  sha256 "baf7902a1820d6ec2c17a449fb29ad9e4a0a0ec8fad7e7edf609df9fd836e41d"

  depends_on :macos

  def install
    bin.install "cull"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cull version")
  end
end
