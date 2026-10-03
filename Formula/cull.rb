class Cull < Formula
  desc "Pre-import culling for DNG shoots: verified offload, focus checked at the eyes"
  homepage "https://code.jefflaplante.com/cull/"
  url "https://github.com/jefflaplante/cull/releases/download/v0.1.0/cull_macos_universal.tar.gz"
  version "0.1.0"
  sha256 "5d3a7cb924e9d3267ed8ee8f4882b475a183f6fcddbab50c8e2161c30093bce3"

  depends_on :macos

  def install
    bin.install "cull"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cull version")
  end
end
