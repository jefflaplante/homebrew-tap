class Cull < Formula
  desc "Pre-import culling for DNG shoots: verified offload, focus checked at the eyes"
  homepage "https://code.jefflaplante.com/cull/"
  url "https://github.com/jefflaplante/cull/releases/download/v0.1.7/cull_macos_universal.tar.gz"
  sha256 "afa200c4eaabec272acf0719da5f72fd338ae9607bbcf1b6c7d0e27b8cf6bd33"

  depends_on :macos

  def install
    bin.install "cull"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cull version")
  end
end
