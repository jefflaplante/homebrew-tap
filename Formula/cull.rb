class Cull < Formula
  desc "Pre-import culling for DNG shoots: verified offload, focus checked at the eyes"
  homepage "https://code.jefflaplante.com/cull/"
  url "https://github.com/jefflaplante/cull/releases/download/v0.1.1/cull_macos_universal.tar.gz"
  sha256 "479397cd64fb90b8f854cb8579c25d74aa72bdc9b0756608b87e1013f1cdd07b"

  depends_on :macos

  def install
    bin.install "cull"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cull version")
  end
end
