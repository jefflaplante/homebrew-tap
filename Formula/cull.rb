class Cull < Formula
  desc "Pre-import culling for DNG shoots: verified offload, focus checked at the eyes"
  homepage "https://code.jefflaplante.com/cull/"
  url "https://github.com/jefflaplante/cull/releases/download/v0.1.2/cull_macos_universal.tar.gz"
  sha256 "d5270502d90eeb613a0a0a8c15a8b6e29b339ac03c0c20325b6f2b74d3f1263f"

  depends_on :macos

  def install
    bin.install "cull"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cull version")
  end
end
